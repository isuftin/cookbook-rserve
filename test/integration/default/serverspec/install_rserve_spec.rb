require 'spec_helper.rb'

describe file('/tmp/rserve_install.R') do
  it { should be_file }
  it { should exist }
end

describe command('Rscript -e \'"Rserve" %in% rownames(installed.packages())\' | grep TRUE') do
  its(:exit_status) { should eq 0 }
end
