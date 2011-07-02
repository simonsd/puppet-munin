import 'packages.pp'
import 'config.pp'
import 'services.pp'

class munin {
	include munin::packages
	include munin::config
	include munin::services
}
