class people::kitatuba {
  # util
  include wget
  include atom
  include netbeans::php

  package {
    [
      'tmux',
      'vim',
      'lha',
      'freetype',
      'peg',
      'libpng',
      'gd',
      'openssl',
      'unixodbc',
      'xz',
      'binutils',
      'coreutils',
      'android',
      'rbenv',
      'ruby-build',
      'samba',
      'node'
    ]:
  }

}
