## Changelog
---------

- 0.1.11
  -----
  - [isuftin@usgs.gov] - Add R_LIBS export to RServer startup
  - [isuftin@usgs.gov] - Create library directory in RServe

- 0.1.10
  -----
  - [isuftin@usgs.gov] - Removing IPTables templating in favor of attribute setting
  - [isuftin@usgs.gov] - Allowing user to install latest version of R

- 0.1.9
  -----
  - [isuftin@usgs.gov] - Updated to latest versions of libraries. 
  - [isuftin@usgs.gov] - Allowing user to select R version to install.

- 0.1.8
  -----
  - [isuftin@usgs.gov] - Now installing openssl-devel since current version of RServe seems to require it

- 0.1.7
  -----
  - [isuftin@usgs.gov] - Added doi_ssl_filtering cookbook into Berksfile for testing on DOI network. Optional to use.
  - [isuftin@usgs.gov] - Updated the default version of RServe downloaded.
  - [isuftin@usgs.gov] - Removed yum from Berksfile. No longer depending on it. 
  - [isuftin@usgs.gov] - Updated documentation.

- 0.1.6
  -----
  - [isuftin@usgs.gov] - Added IPTables rule

- 0.1.5
  -----
  - [isuftin@usgs.gov] - Updated dependencies for cookbooks
  - [isuftin@usgs.gov] - Updated .kitchen.yml to streamline
  - [isuftin@usgs.gov] - Added Test Kitchen integration testing
  - [isuftin@usgs.gov] - Created a system to feed user/pass credentials from an encrypted data bag