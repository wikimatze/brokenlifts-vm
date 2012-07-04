class git {

  package { "git-core":
    ensure  => installed
  }

  exec { "git clone brokenlifts":
    cwd       => '/vagrant',
    command   => '/usr/bin/git clone https://github.com/sozialhelden/brokenlift.git',
    require   => Package['git-core'],
  }

}

