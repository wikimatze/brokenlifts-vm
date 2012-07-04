class mysql {

  package { [ "mysql-client", "mysql-server", "libmysqlclient-dev" ]:
    ensure  => installed,
    require => Exec['apt-update'],
  }

}

