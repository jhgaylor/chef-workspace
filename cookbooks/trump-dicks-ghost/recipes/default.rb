deploy_nodejs node['trump-dicks-ghost']['name'] do |r|
  app_version node['trump-dicks-ghost']['version']
  dns_name node['trump-dicks-ghost']['dns_name']
end
