RServe
=====================
Description of cookbook

Requirements
------------
### Platforms
- CentOS 6.x

### Cookbooks
- IPTables - https://supermarket.chef.io/cookbooks/iptables
- Yum-EPEL - https://supermarket.chef.io/cookbooks/yum-epel

Attributes
----------
- `node['RServe']['cran_repo']` = The URL to use for the CRAN repository to get RServe dependencies
- `node['RServe']['rserve_package_location']` = The URL to get the RServe installation package
- `node['RServe']['startup_options']` = The startup options to add to /usr/lib64/R/bin/Rserv.sh
- `node['RServe']['group_name']` = The group RServe will run under
- `node['RServe']['user_name']` = The user RServe will run under
- `node['RServe']['configuration']` = An array of strings that define the configuration file for RServe
- `node['RServe']['credentials_data_bag_name']` = The data bag name to use for looking up RServe credentials
- `node['RServe']['credentials_data_bag_item']` = The data bag item within which credentials are stored


Usage
-----
Simply include the default recipe (RServe::default)
 
Authors
-------
- Author:: Ivan Suftin (<isuftin@usgs.gov>)

License
-------
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
