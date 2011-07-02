class munin::config {
	file {
		'munin.conf':
			ensure => present,
			path => '/etc/munin/munin.conf',
			owner => root,
			group => root,
			mode => 0644,
			content => template('munin/munin.conf');

		'munin-node.conf':
			ensure => present,
			path => '/etc/munin/munin-node.conf',
			owner => root,
			group => root,
			mode => 0644,
			content => template('munin/munin-node.conf');

		'munin-apache.conf':
			ensure => present,
			path => $operatingsystem ? {
				Centos => '/etc/httpd/conf.d/munin.conf',
				Debian => '/etc/apache2/conf.d/munin.conf',
			},
			owner => root,
			group => root,
			mode => 0644,
			content => template('munin/munin-apache.conf');
	}
}