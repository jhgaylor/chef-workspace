artifact_package_name = "#{node['pathfinder']['api']['name']}-#{node['pathfinder']['api']['version']}.tar.gz"
artifact_path = "/tmp/#{artifact_package_name}"
target_dir = "/opt/#{node['pathfinder']['api']['name']}"

awscli_s3_file artifact_path do
  region node['base']['aws']['region']
  bucket node['base']['releases_bucket']
  key "#{node['pathfinder']['api']['name']}/#{artifact_package_name}"
  timeout 1200
  owner 'ubuntu'
  group 'ubuntu'
  mode '0644'
end

directory target_dir do
  owner 'ubuntu'
  group 'ubuntu'
  mode '0744'
  action :create
end

tar_extract artifact_path do
  target_dir target_dir
  creates "#{target_dir}/index.js"
  tar_flags [ '--strip-components 2' ]
  user 'ubuntu'
  group 'ubuntu'
  mode '0744'
  action :extract_local
end
