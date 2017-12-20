# The repository to use for installing RServe
default['RServe']['cran_repo'] = 'http://cran.rstudio.com/'

# If this attribute is empty, RServe will attempt to install from the CRAN repository
default['RServe']['rserve_package_location'] = 'http://rforge.net/Rserve/snapshot/Rserve_1.8-5.tar.gz'
default['RServe']['startup_options'] = '--no-save --RS-conf /etc/Rserv.conf'

default['RServe']['group_name'] = 'rserver'
default['RServe']['user_name'] = 'rserver'

default['RServe']['iptables']['rules']['rserve_tcp_6311'] = '-A FWR -p tcp -m tcp --dport 6311 -j ACCEPT'

default['RServe']['configuration'] = [
  'workdir  /tmp/Rserv',
  'remote enable',
  'fileio enable',
  'auth required',
  'plaintext  enable',
  'pwdfile  /home/rserver/pwdfile'
]

default['RServe']['credentials_data_bag_name'] = 'rserve-_default'
default['RServe']['credentials_data_bag_item'] = 'credentials'

# The version of R to be installed - Include version number or 'latest' to not pin to version
default['RServe']['r_version'] = 'latest'
