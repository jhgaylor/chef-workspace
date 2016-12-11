template "#{node['nginx']['dir']}/sites-available/ui" do
  source 'pathfinder-ui.nginx.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  variables({
    :ui_dir => "/opt/#{node['pathfinder']['ui']['name']}"  
  })
end

service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action   :enable
end

nginx_site 'ui' do
  enable true
end