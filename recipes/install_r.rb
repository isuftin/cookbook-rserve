#
# Cookbook Name:: RServe
# Recipe:: install_r
# Author: Ivan Suftin < isuftin@usgs.gov >
#
# Description: Installs the R 

version = node['RServe']['r_version']

if ['','latest'].include? version.to_s
	# No source and no version was provided. Install the latest
	# from YUM
	package 'R'
else 
	# Install the version from the YUM repo
	package 'R' do
		version node['RServe']['r_version']
	end	
end


