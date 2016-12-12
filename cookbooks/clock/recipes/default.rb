deploy_nodejs node['clock']['name'] do |r|
  app_version node['clock']['version']
  dns_name node['clock']['dns_name']
end
