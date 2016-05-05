require 'spec_helper.rb'

describe iptables do
  it { should have_rule('-A FWR -p tcp -m tcp --dport 6311 -j ACCEPT') }
end