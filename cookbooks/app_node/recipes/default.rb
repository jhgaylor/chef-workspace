include_recipe "nodejs"
include_recipe 'app_node::_artifact'
include_recipe 'jhg_nginx'
include_recipe 'app_node::_proxy'
include_recipe 'app_node::_service'
