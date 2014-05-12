class people::mmunhall::applications {

	include java
	include dropbox
	include firefox
	include chrome

	package { 'Atom 0.94':
		ensure => installed,
		source => 'https://github.com/atom/atom/releases/download/v0.94.0/atom-mac.zip',
		provider => compressed_app,
	}
}
