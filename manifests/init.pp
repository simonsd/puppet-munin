import 'packages.pp'
import 'config.pp'
import 'services.pp'

class munin (
	$server = 'no',
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
