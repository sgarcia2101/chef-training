package 'tree' do
  action :install
end

template '/etc/motd' do
  source 'motd.erb'
end
