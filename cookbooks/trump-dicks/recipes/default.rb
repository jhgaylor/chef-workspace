deploy_nodejs node['trump-dicks']['name'] do |r|
  app_version node['trump-dicks']['version']
  dns_name node['trump-dicks']['dns_name']
end
