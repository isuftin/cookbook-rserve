require 'spec_helper.rb'

describe package('R') do
  it { should be_installed }
end