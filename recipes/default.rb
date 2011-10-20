#
# Cookbook Name:: pirum
# Recipe:: default
#
# Copyright 2011, dkd Internet Service GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

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
