package 'tree' do
  action :install
end

file '/etc/motd' do
  content "Property of Sergio\nhi!

  IPADDRESS: #{node['ipaddress']}
  HOSTNAME:  #{node['hostname']}
  MEMORY:    #{node['memory']['total']}
  CPU:       #{node['cpu']['0']['mhz']}"
end
