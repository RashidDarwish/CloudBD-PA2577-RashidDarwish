#/usr/bin/apt install --reinstall ca-certificates

  exec { "apt-update":
    command => "/usr/bin/apt-get update",

  }

  exec { "apt-get-curl":
    command => "/usr/bin/apt-get install -y curl"
  }

  exec { "curl-node":
    command => "/usr/bin/curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -"
  }

  exec { "apt-get-node":
    command => "/usr/bin/apt-get install -y nodejs"
  }

  Exec["apt-update"] -> Package <| |>
  Exec["apt-get-curl"] -> Package <| |>
  Exec["curl-node"] -> Package <| |>
  Exec["apt-get-node"] -> Package <| |>