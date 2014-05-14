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

	# TODO: Create a library for this
	package { 'Atom 0.94' :
		ensure => installed,
		source => 'https://github.com/atom/atom/releases/download/v0.94.0/atom-mac.zip',
		provider => compressed_app,
	}

	# TODO: Create a library for this. Include the option to import connections.
	package { 'oracle_sql_developer' :
		ensure => installed,
		source => 'http://download.oracle.com/otn/java/sqldeveloper/sqldeveloper-4.0.2.15.21-macosx.tar.gz',
		provider => compressed_app
	}

}
