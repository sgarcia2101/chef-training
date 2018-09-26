#
# Cookbook:: apache
# Recipe:: configuration
#
# Copyright:: 2018, The Authors, All Rights Reserved.
file node['apache']['file'] do
  content node['apache']['file_content']
end
