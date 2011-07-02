class munin::packages {
	package {
		'munin':
			ensure => present;
#			require => Package['apache'];

		'munin-node':
			ensure => present;
	}
}
