# CHANGELOG

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Removed
  - [isuftin@usgs.gov] - Now depending on the yum-epel cookbook. No longer using own recipe
### Changed
  - [isuftin@usgs.gov] - Updated test kitchen config to use latest Bento box releases for CentOS
  - [isuftin@usgs.gov] - Changelog now uses a specific format
  - [isuftin@usgs.gov] - Newest SSL filtering version in Berksfile
  - [isuftin@usgs.gov] - No longer version locking Berksfile dependencies
  - [isuftin@usgs.gov] - No longer version locking Berksfile dependencies
  - [isuftin@usgs.gov] - Cleaned up style via RuboCop and FoodCritic

## [0.1.11]
### Added
  - [isuftin@usgs.gov] - Add R_LIBS export to RServer startup
  - [isuftin@usgs.gov] - Create library directory in RServe

## [0.1.10]
### Changed
  - [isuftin@usgs.gov] - Removing IPTables templating in favor of attribute setting
### Added
  - [isuftin@usgs.gov] - Allowing user to install latest version of R

## [0.1.9]
### Changed
  - [isuftin@usgs.gov] - Updated to latest versions of libraries.
### Added
  - [isuftin@usgs.gov] - Allowing user to select R version to install.

## [0.1.8]
### Changed
  - [isuftin@usgs.gov] - Now installing openssl-devel since current version of RServe seems to require it

## [0.1.7]
### Added
  - [isuftin@usgs.gov] - Added doi_ssl_filtering cookbook into Berksfile for testing on DOI network. Optional to use.
### Changed
  - [isuftin@usgs.gov] - Updated the default version of RServe downloaded.
  - [isuftin@usgs.gov] - Removed yum from Berksfile. No longer depending on it.
  - [isuftin@usgs.gov] - Updated documentation.

## [0.1.6]
### Added
  - [isuftin@usgs.gov] - Added IPTables rule

## [0.1.5]
### Changed
  - [isuftin@usgs.gov] - Updated dependencies for cookbooks
  - [isuftin@usgs.gov] - Updated .kitchen.yml to streamline
### Added
  - [isuftin@usgs.gov] - Added Test Kitchen integration testing
  - [isuftin@usgs.gov] - Created a system to feed user/pass credentials from an encrypted data bag
