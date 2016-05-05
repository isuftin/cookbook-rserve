require 'spec_helper.rb'

if os[:family] == 'redhat'
	describe command('yum repolist | grep epel') do
	  its(:exit_status) { should eq 0 }
	end
end