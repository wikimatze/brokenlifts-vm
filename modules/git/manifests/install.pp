# == Class: git::install
#
# This class will install jkj
# This class install the basics of git and clone the repository of the
# brokenlifst repository
#
#
# === Authors
#
# * Matthias Günther <mailto:matthias.guenther@wikimatze.de>
#

class git::install {
  package { 'git-core':
    ensure => installed
  }

  exec { 'git-clone-brokenlifts-code':
    cwd     => '/vagrant',
    command => '/usr/bin/git clone https://github.com/sozialhelden/brokenlift.git',
    creates => '/vagrant/brokenlift',
    require  => Package['git-core']
  }

}

