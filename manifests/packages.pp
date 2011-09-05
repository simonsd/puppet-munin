class munin::packages {
	@package {
		'munin':
			ensure => present,
			require => Package["$webserver"];

		'munin-node':
			ensure => present;
	}

	realize(Package['munin-node'])

	if $munin::server == yes {
		realize(Package['munin'])
	}
}
