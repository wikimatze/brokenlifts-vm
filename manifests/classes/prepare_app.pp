class prepare_app {

  exec { "install bundles":
    cwd       => "/vagrant/brokenlift",
    command   => "/opt/vagrant_ruby/bin/bundle install",
    timeout   => 0,
    require  => [ Class['git'], Class['ruby'], Class['gems'], Class['mysql'] ]
  }


  exec { "create databases":
    cwd       => "/vagrant/brokenlift",
    command   => "/opt/vagrant_ruby/bin/rake db:create",
    timeout   => 0,
    require   => Exec['install bundles']
  }

  exec { "migrate databases":
    cwd       => "/vagrant/brokenlift",
    command   => "/opt/vagrant_ruby/bin/rake db:migrate",
    timeout   => 0,
    require   => [ Exec['install bundles'], Exec['create databases'] ]
  }

  exec { "populate databases":
    cwd       => "/vagrant/brokenlift",
    command   => "/opt/vagrant_ruby/bin/rake db:populate",
    timeout   => 0,
    require   => [ Exec['install bundles'], Exec['create databases'], Exec['migrate databases'] ]
  }

}

