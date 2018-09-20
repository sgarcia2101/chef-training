name 'loadbalancer'
description 'load balancer'
run_list 'recipe[haproxy]'
default_attributes({
  "apache" => {
    "port" => 8181
  }
})
