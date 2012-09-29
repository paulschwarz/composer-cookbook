#
# Cookbook Name:: composer
# Recipe:: default
#
# Copyright 2012, Media & Software Studio
#
# All rights reserved - Do Not Redistribute
#

execute "get-composer" do
  cwd node[:composer][:base_path]
  command "sudo wget http://getcomposer.org/composer.phar"
  creates "composer.phar"
  creates "#{node[:composer][:base_path]}/composer.phar"
  action :run
end

execute "install-composer" do
  cwd node[:composer][:base_path]
  command "sudo php composer.phar install --prefer-source"
  creates "#{node[:composer][:base_path]}/composer.lock"
  action :run
end
