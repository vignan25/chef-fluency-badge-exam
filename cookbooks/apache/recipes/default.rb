#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#Install apache
package 'apache2' do
    package_name 'httpd'
end
#start the service
service 'apache2' do
     service_name 'httpd'
     action [:start, :enable]
end
