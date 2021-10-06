Exec { path => '/bin/:/sbin/:/usr/bin/:/usr/sbin/' }

Exec { "apt-get update":
  command => "apt-get update";
}

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
