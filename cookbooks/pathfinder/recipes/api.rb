deploy_nodejs node['pathfinder']['api']['name'] do |r|
  app_version node['pathfinder']['api']['version']
  dns_name node['pathfinder']['api']['dns_name']
  tar_flags ['--strip-components 3']
end
