class munin::services {
	service { 'munin-node':
		ensure => running,
		enable => true,
	}
}
