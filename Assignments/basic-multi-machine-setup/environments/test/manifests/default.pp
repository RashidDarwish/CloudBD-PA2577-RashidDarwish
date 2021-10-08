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

 node /^appserver$/ {
  include update
  include curl
  include nodejs
}

 node default {
  include update
}

node /^dbserver$/ {
  #include update mysql
  #installed and running
}

node /^web$/ {
  #include update nginx
  #installed and running
}