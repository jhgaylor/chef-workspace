template "/etc/init/pathfinder.conf" do
  source 'pathfinder.upstart.conf.erb'
  owner 'root'
  group 'root'
  mode '0744'
end

service "pathfinder" do
  action [:enable, :start]
end