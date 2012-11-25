# Class: mysql::php
#
# This class installs the php libs for mysql.
#
# Parameters:
#   [*ensure*]       - ensure state for package.
#                        can be specified as version.
#   [*package_name*] - name of package
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class mysql::php (
  $package_name   = $mysql::params::php_package_name,
  $package_ensure = 'present'
) inherits mysql::params {

  package { 'php-mysqldb':
    ensure => $package_ensure,
    name   => $package_name,
  }

}
