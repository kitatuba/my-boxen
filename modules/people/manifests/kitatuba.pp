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

  # dotfile setting
  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/dotfiles"
  repository { $dotfiles:
    source  => 'mediba-Kitada/dotfiles'
  }
  exec { "setup-dotfiles":
    cwd => $dotfiles,
    command => 'sh install.sh'
  }

}
