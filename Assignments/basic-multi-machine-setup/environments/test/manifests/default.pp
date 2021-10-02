Exec { path => '/bin/:/sbin/:/usr/bin/:/usr/sbin/' }

Exec { "apt-get update":
  command => "apt-get update";
}