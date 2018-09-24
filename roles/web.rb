name 'web'
description 'Web Server'
run_list 'role[base]', 'recipe[apache]'
default_attributes({
  "apache" => {
    "port" => 8181
  }
})
