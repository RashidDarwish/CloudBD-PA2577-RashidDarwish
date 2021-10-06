# create a new run stage to ensure certain modules are included first
stage { 'pre':
  before => Stage['main']
}

# add the baseconfig module to the new 'pre' run stage
class { 'baseconfig':
  stage => 'pre'
}

# set defaults for file ownership/permissions
File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}

# all boxes get the base config
include baseconfig

# Exec { path => '/bin/:/sbin/:/usr/bin/:/usr/sbin/' }
#
# Exec { "apt-get update":
#   command => "apt-get update";
# }

node 'appserver' {
  include nodejs
}

node 'dbserver' {
  include mysql
  #installed and running
}

node 'web' {
  include nginx
  #installed and running
}

node 'tst0', 'tst1', 'tst2' {
  include nginx
  #run apt-get update
}
