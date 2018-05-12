#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#Install apache

if node['platform_family'] == "rhel"
       package = "httpd"
elsif node['platform_family'] == "debian"
      package = "apache2"
end

package 'apache2' do
    package_name package
end

#start the service

service 'apache2' do
     service_name 'httpd'
     action [:start, :enable]
end




