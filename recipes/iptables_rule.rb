#
# Cookbook Name:: RServe
# Recipe:: iptables_rule
# Author: Ivan Suftin < isuftin@usgs.gov >
#
# Description: Sets up IPtables openings

node['RServe']['iptables']['rules'].map do |rule_name, rule_body|
  iptables_rule rule_name do
    lines [ rule_body ].flatten.join("\n")
  end
end