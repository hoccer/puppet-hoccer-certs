class hoccer-certs::install {
  file { '/usr/local/share/ca-certificates/hoccer_ca.crt':
    source => 'puppet:///modules/hoccer-certs/hoccer_ca.cer',
    owner => 'root',
    group => 'root',
    mode => 644,
    notify => Exec['update-ca-certificates']
  }

  exec { 'update-ca-certificates':
    command => '/usr/sbin/update-ca-certificates'
  }
}
