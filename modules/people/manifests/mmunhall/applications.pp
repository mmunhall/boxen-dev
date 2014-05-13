class people::mmunhall::applications {

	include java
	include firefox
	include chrome
	include zsh

	include dropbox
	include spotify
	include arduino

	class { 'vmware_fusion' :
		version => '5.0.3-1040386',
	}

	class { 'intellij' :
		edition => 'ultimate',
		version => '13.1.2',
	}

	package { 'Atom 0.94' :
		ensure => installed,
		source => 'https://github.com/atom/atom/releases/download/v0.94.0/atom-mac.zip',
		provider => compressed_app,
	}
}
