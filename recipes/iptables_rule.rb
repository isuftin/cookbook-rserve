#
# Cookbook Name:: RServe
# Recipe:: iptables_rule
# Author: Ivan Suftin < isuftin@usgs.gov >
#
# Description: Sets up IPtables openings

iptables_rule 'iptables_rule_rserve_6311' do
  action :enable
end