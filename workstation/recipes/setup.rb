package 'tree' do
  action :install
end

file '/etc/motd' do
  content "Property of Sergio\nhi!"
end
