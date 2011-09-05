import 'packages.pp'
import 'config.pp'
import 'services.pp'

class munin (
	$server = 'no',
	$master = '127\.0\.0\.1',
	$webserver = $::operatingsystem ? {
		default => 'httpd',
		debian => 'apache',
	}
) {
	class {
		'munin::packages':
			before => Class['munin::config'];
		'munin::config':
			before => Class['munin::services'];
		'munin::services':;
	}
}
