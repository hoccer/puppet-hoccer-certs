class hoccer-certs::install {
  file { 'Hoccer CA':
    path => '/etc/ssl/certs/hoccer_ca.cer',
    source => 'puppet:///modules/hoccer-certs/hoccer_ca.cer'
  }
}
