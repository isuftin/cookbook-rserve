require 'spec_helper.rb'

describe user('rserver') do
  it { should exist }
  it { should belong_to_group 'rserver' }
end

describe group('rserver') do
  it { should exist }
end

describe file('/var/log/rserve.log') do
  it { should be_file }
  it { should exist }
  it { should be_owned_by 'rserver' }
  it { should be_grouped_into 'rserver' }
end

describe file('/etc/Rserv.conf') do
  it { should be_file }
  it { should exist }
  it { should be_owned_by 'rserver' }
  it { should be_grouped_into 'rserver' }
end

describe file('/usr/lib64/R/bin/Rserv.sh') do
  it { should be_file }
  it { should exist }
  it { should be_owned_by 'rserver' }
  it { should be_grouped_into 'rserver' }
  it { should be_mode 550 }
end

describe file('/etc/init.d/rserved') do
  it { should be_file }
  it { should exist }
  it { should be_owned_by 'rserver' }
  it { should be_grouped_into 'rserver' }
  it { should be_mode 550 }
end

describe service('rserved') do
  it { should be_enabled }
  it { should be_running }
end