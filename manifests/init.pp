class codemgmt_1055_hotfix {
  if(has_key($facts, 'pe_server_version')) {
    if ((versioncmp('2017.2.0', $facts['pe_server_version']) > 0) and (versioncmp('2016.5.0', $facts['pe_server_version']) < 0)){
      file {'/opt/puppetlabs/server/apps/puppetserver/bin/generate-puppet-types.rb':
        ensure => file,
        source => 'puppet:///modules/codemgmt_1055_hotfix/generate-puppet-types.rb',
        mode   => '0755',
        owner  => 'root',
        group  => 'root',
      }
    }
  }
}
