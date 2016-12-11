include_recipe 'nginx'

directory node['nginx']['dir'] do
  owner     'root'
  group     'root'
  mode      '0755'
  recursive true
end

directory node['nginx']['log_dir'] do
  mode      node['nginx']['log_dir_perm']
  owner     node['nginx']['user']
  action    :create
  recursive true
end

directory File.dirname(node['nginx']['pid']) do
  owner     'root'
  group     node['root_group']
  mode      '0755'
  recursive true
end

directory "#{node['nginx']['dir']}/conf.d" do
  owner 'root'
  group node['root_group']
  mode  '0755'
end
