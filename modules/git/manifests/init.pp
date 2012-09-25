# == Class: git
#
# This class install the basics of git and clone the repository of the
# brokenlifst repository
#
#
# === Authors
#
# * Matthias Günther <mailto:matthias.guenther@wikimatze.de>
#
class git::init {
  include git::install


}
