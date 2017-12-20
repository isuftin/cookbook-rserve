name             'RServe'
maintainer       'Ivan Suftin'
maintainer_email 'isuftin@usgs.gov'
license          'CPL-1.0'
description      'Installs/Configures RServe'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.12'

depends 'yum-epel'

chef_version '>= 12.18.31'

source_url               'https://github.com/USGS-CIDA/cookbook-rserve'
issues_url               'https://github.com/USGS-CIDA/cookbook-rserve/issues'

supports         'centos', '>= 6.6'
supports         'centos', '>= 7.1'
