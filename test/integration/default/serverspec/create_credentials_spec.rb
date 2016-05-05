require 'spec_helper.rb'

describe file('/home/rserver/pwdfile') do
  it { should be_file }
  it { should exist }
  it { should be_owned_by 'rserver' }
  it { should be_grouped_into 'rserver' }
  it { should be_mode 644 }
  its(:content) { should contain "testuser testpass" }
  its(:content) { should contain "testuser2 testpass2" }
end