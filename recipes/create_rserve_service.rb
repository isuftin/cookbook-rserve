#
# Cookbook Name:: RServe
# Recipe:: create_rserve_service
# Author: Ivan Suftin < isuftin@usgs.gov >
#
# Description: Adds an RServe user, group and startup scripts

user_name = node['RServe']['user_name']
group_name = node['RServe']['group_name']
rserv_home_libs_dir = node['RServe']['home_libs_dir'] ? node['RServe']['home_libs_dir'] : File.join('/home', user_name.to_s, 'R_libs')

# Create the group and user
group group_name

user user_name do
  gid group_name
  manage_home true
end

directory rserv_home_libs_dir do
  owner user_name
  group group_name
end

file '/var/log/rserve.log' do
  owner user_name
  group group_name
  action :create_if_missing
end

# Create the configuration file
template '/etc/Rserv.conf' do
  source 'Rserv.conf.erb'
  owner user_name
  group group_name
  variables(
    configs: node['RServe']['configuration']
  )
end

# Create the executable script
template '/usr/lib64/R/bin/Rserv.sh' do
  source 'RServ.sh.erb'
  owner user_name
  group group_name
  mode '0550'
  variables(
    rserv_startup_option: node['RServe']['startup_options'],
    rserv_home_libs_dir: rserv_home_libs_dir
  )
end

# Create the system service
template '/etc/init.d/rserved' do
  source 'rserved.erb'
  owner user_name
  group group_name
  mode '0550'
  variables(
    user: user_name
  )
end
