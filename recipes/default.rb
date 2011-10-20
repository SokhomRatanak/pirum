case node.platform
when "debian", "ubuntu"
  include_recipe "php"

  # @see http://www.pirum-project.org/
  execute "pear channel-discover pear.pirum-project.org" do
    not_if "pirum | grep 'Available commands'"
  end
  execute "pear install pirum/Pirum-beta" do
    not_if "pirum | grep 'Available commands'"
  end
  
  directory "#{node[:pirum][:webroot]}#{node[:pirum][:hostname]}" do
    owner "root"
    group "root"
    mode 0655
    action :create
    recursive true
  end
  
  template "#{node[:pirum][:webroot]}#{node[:pirum][:hostname]}/pirum.xml" do
    source "pirum.xml.erb"
    owner "root"
    group "root"
    mode 0644
  end
  
  execute "pirum build #{node[:pirum][:webroot]}#{node[:pirum][:hostname]}/"
end
