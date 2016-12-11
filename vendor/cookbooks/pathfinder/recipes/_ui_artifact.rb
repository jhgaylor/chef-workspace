artifact_package_name = "#{node['pathfinder']['ui']['name']}-#{node['pathfinder']['ui']['version']}.tar.gz"
artifact_path = "/tmp/#{artifact_package_name}"
target_dir = "/opt/#{node['pathfinder']['ui']['name']}"

awscli_s3_file artifact_path do
  region node['base']['aws']['region']
  bucket node['base']['releases_bucket']
  key "#{node['pathfinder']['ui']['name']}/#{artifact_package_name}"
  timeout 1200
  owner 'ubuntu'
  group 'ubuntu'
  mode '0644'
end

directory target_dir do
  owner 'www-data'
  group 'www-data'
  mode '0744'
  action :create
end

tar_extract artifact_path do
  target_dir target_dir
  creates "#{target_dir}/static"
  tar_flags [ '--strip-components 3' ]
  user 'www-data'
  group 'www-data'
  mode '0744'
  action :extract_local
end
