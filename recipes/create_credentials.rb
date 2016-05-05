#
# Cookbook Name:: RServe
# Recipe:: create_credentials
# Author: Ivan Suftin < isuftin@usgs.gov >
#
# Description: Adds credentials to the rserve

user_name = node['RServe']['user_name']
group_name = node['RServe']['group_name']
data_bag_name = node['RServe']['credentials_data_bag_name']
data_bag_item = node['RServe']['credentials_data_bag_item']
credentials_data_bag_item = data_bag_item(data_bag_name, data_bag_item)
accounts = credentials_data_bag_item['accounts']

template "/home/#{user_name}/pwdfile" do
	source "pwdfile.erb"
	owner user_name
	group group_name
	mode '0644'
	sensitive true
	variables(
		:accounts => accounts
	)
end


