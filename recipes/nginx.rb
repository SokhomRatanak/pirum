include_recipe "nginx"

template "#{node[:pirum][:hostname]}.conf" do
  path "#{node[:nginx][:dir]}/sites-available/#{node[:pirum][:hostname]}.conf"
  source "default-site.erb"
  owner "root"
  group "root"
  mode 0644
end

nginx_site node[:pirum][:hostname] + ".conf"