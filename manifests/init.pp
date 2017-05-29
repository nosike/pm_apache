#### This module is use to enforce some of the vulnerabilities remediations found in apache servers.

class pm_apache {
                  
$package = httpd
$service = httpd
$file_1  = "/etc/httpd/conf/httpd.conf"
$file_2  = "/etc/httpd/conf.d/ssl.conf"             
$file_3  = "/home/pemedom1_ms/file.pc"

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

if $file_1 == 'present' {
$one = "Peter IS GOOD"
$two = "PETER IS MINE"
$three = "PETER IS OUR LEADER"
exec { 'echo':                    # exec resource named 'echo'
  command => '/bin/echo "$one,$two,$three" >> $file_3',
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
