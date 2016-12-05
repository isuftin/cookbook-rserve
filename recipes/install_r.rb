#
# Cookbook Name:: RServe
# Recipe:: install_r
# Author: Ivan Suftin < isuftin@usgs.gov >
#
# Description: Installs the R 

package 'R' do
	version node['RServe']['r_version']
end
