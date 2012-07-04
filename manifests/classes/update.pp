class update {

  exec { "apt-update":
    path      => '/usr/local/bin:/usr/bin:/usr/bin/sudo',
    command   => '/usr/bin/apt-get -y update',
  }

  exec { "fix missing":
    path      => '/usr/local/bin:/usr/bin:/usr/bin/sudo',
    command   => 'sudo apt-get -y update --fix-missing',
    require   => Exec['apt-update']
  }

  exec { "upgrade machine":
    path      => '/usr/local/bin:/usr/bin:/usr/bin/sudo',
    command   => 'sudo apt-get -y upgrade',
    require   => [ Exec['fix missing'], Exec['apt-update'] ]
  }

}

