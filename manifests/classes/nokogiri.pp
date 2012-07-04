class nokogiri {

  package { "libxslt-dev":
    ensure => present
  }

  package { "libxml2-dev":
    ensure => present
  }

}

