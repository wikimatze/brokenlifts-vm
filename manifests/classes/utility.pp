class utility {

  package { "make":
    ensure  => installed,
    require => Exec['apt-update']
  }

}

