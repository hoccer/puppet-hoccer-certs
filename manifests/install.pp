class hoccer_certs::install {
  file { 'Hoccer CA':
    path => '/etc/ssl/certs/hoccer_ca.cer',
    source => 'puppet:///module/hoccer_certs/hoccer_ca.cer'
  }
}
