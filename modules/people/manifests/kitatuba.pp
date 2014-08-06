class people::kitatuba {
  # util
  include wget
  include atom
  include netbeans::php
  include vagrant
  include virtualbox
  include osx::global::tap_to_click
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::keyboard::capslock_to_control

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
