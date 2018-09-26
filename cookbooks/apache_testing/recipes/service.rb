#
# Cookbook:: apache
# Recipe:: service
#
# Copyright:: 2018, The Authors, All Rights Reserved.

service 'httpd' do
  action [:enable, :start]
end

