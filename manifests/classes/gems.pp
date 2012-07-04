class gems {

  package { "rails":
    ensure   => 'installed',
    provider => 'gem',
    require  => [ Class['ruby'], Class['rubyracer'] ]
  }

}

