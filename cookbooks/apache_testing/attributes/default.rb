case node['platform']
when 'ubuntu'
  default['apache']['package_name'] = 'apache2'
  default['apache']['service_name'] = 'apache2'
else
  default['apache']['package_name'] = 'httpd'
  default['apache']['service_name'] = 'httpd'
end
default['apache']['file'] = '/var/www/html/index.html'
default['apache']['file_content'] = '<h1>Welcome Home!</h1>'
