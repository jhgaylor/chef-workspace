app_node node['pathfinder']['api']['name'] do |r|
  version node['pathfinder']['api']['version']
  dns_name node['pathfinder']['api']['dns_name']
  tar_strip_components 2
end
