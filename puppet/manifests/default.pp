$ar_databases = ['activerecord_unittest', 'activerecord_unittest2']
$as_vagrant   = 'sudo -u vagrant -H bash -l -c'
$home         = '/home/vagrant'

Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}

# --- Preinstall Stage ---------------------------------------------------------

stage { 'preinstall':
  before => Stage['main']
}

class apt_get_update {
  exec { 'apt-get -y update':
    unless => "test -e ${home}/.rvm"
  }
}
class { 'apt_get_update':
  stage => preinstall
}

# --- MySQL --------------------------------------------------------------------

class install_mysql {


  class { 'mysql': }

  class { 'mysql::server':
    config_hash => { 'root_password' => '' }
  }

  package { 'libmysqlclient15-dev':
    ensure => installed
  }
  database { 'satriani_test':
    ensure  => 'present',
    charset => 'utf8'
  }
  database { 'satriani_staging':
    ensure  => 'present',
    charset => 'utf8'
  }
  database { 'satriani_development':
    ensure  => 'present',
    charset => 'utf8'
  }
  database { 'satriani':
    ensure  => 'present',
    charset => 'utf8'
  }


  database_user { 'satriani@localhost': 
      password_hash   => mysql_password('s4tr14n1') 
  } 
  database_grant { 'satriani@localhost/satriani': 
      privileges  => ['ALL'], 
  } 
  database_grant { 'satriani@localhost/satriani_development': 
      privileges  => ['ALL'], 
  } 
  database_grant { 'satriani@localhost/satriani_test': 
      privileges  => ['ALL'], 
  } 
  database_grant { 'satriani@localhost/satriani_staging': 
      privileges  => ['ALL'], 
  } 
  

  
}
class { 'install_mysql': }

# --- Packages -----------------------------------------------------------------

package { 'curl':
  ensure => installed
}

package { 'build-essential':
  ensure => installed
}

package { 'git-core':
  ensure => installed
}

# Nokogiri dependencies.
package { ['libyaml-dev', 'libxml2', 'libxml2-dev', 'libxslt1-dev']:
  ensure => installed
}

# ExecJS runtime.
package { 'nodejs':
  ensure => installed
}



# --- Ruby ---------------------------------------------------------------------

exec { 'install_rvm':
  command => "${as_vagrant} 'curl -L https://get.rvm.io | bash -s stable'",
  creates => "${home}/.rvm",
  require => Package['curl']
}

exec { 'install_ruby':
  command => "${as_vagrant} '${home}/.rvm/bin/rvm install 2.0.0 --autolibs=enabled'",
  creates => "${home}/.rvm/bin/ruby",
  timeout => 600,
  require => [ Package['libyaml-dev'], Exec['install_rvm'] ]
}

exec { 'set_default_ruby': 
  command => "${as_vagrant} '${home}/.rvm/bin/rvm --fuzzy alias create default 2.0.0 && ${home}/.rvm/bin/rvm use default'",
  require => Exec['install_ruby']
}

exec { 'install_bundler':
  command => "${as_vagrant} 'gem install bundler --no-rdoc --no-ri'",
  creates => "${home}/.rvm/bin/bundle",
  require => Exec['set_default_ruby']
}

exec { 'install_rails':
  command => "${as_vagrant} 'gem install rails'",
  require => Exec['install_ruby']
}

