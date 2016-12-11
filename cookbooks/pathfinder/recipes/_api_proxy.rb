template "#{node['nginx']['dir']}/sites-available/api" do
  source 'pathfinder-api.nginx.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action   :enable
end

nginx_site 'api' do
  enable true
end