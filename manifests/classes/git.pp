class git {

  package { "git-core":
    ensure  => installed
  }

  exec { "git clone brokenlifts":
    cwd     => '/vagrant',
    command => '/usr/bin/git clone https://github.com/sozialhelden/brokenlift.git',
    creates => '/vagrant/brokenlift',
    require   => Package['git-core']
  }

}

