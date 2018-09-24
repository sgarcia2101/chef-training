name 'base'
description 'Base Role'
run_list 'recipe[my_chef_client]'
default_attributes({
  "chef_client" => {
    "interval" => 300
  }
})
