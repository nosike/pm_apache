#### This module is use to enforce some of the vulnerabilities remediations found in apache servers.

class pm_apache {
                  
$package = httpd
$service = httpd
             

if $package == 'present' { 

package { '$package':
  ensure => present,

}
}

if $service == 'running' {

service { '$service':
  ensure => running,
}
}

}


#class mcelog {
#$mce_package = mcelog
#
#if $mce_package == 'absent' {
#  fail("Package is already absent. Unpin node from node group.")
#}
#
#case $::osfamily {
#  'Windows':{
#    fail("Operating system not supported")
#}
# 'RedHat':{
#package { 'mcelog':
#  ensure => 'absent',
