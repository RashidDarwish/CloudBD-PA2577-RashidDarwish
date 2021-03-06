Exec { path => '/bin/:/sbin/:/usr/bin/:/usr/sbin/'}

Exec { 'ca-certificates':
   command => "/usr/bin/apt install --reinstall ca-certificates";

}

 class update {
  exec { 'update':
   command => "apt-get update";
  }
}

 class curl {
  exec { 'curl':
   command => "apt-get install -y curl";
  }
}

 class nodejs {
  exec { "nodejs":
    command => "/usr/bin/curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -"
  }

  exec { "apt-get-node":
    command => "/usr/bin/apt-get install -y nodejs"
  }
 }

   class { 'mysql::server':
     root_password           => 'strongpassword',
     remove_default_accounts => true,
     restart                 => true,
     # override_options        => $override_options,
   }

 node /^appserver$/ {
  include update, curl, nodejs
}

 node /^dbserver$/ {
  include 'mysql::server'

}

 node /^web$/ {
  include nginx
}

 node default {
  include update
}

 File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}