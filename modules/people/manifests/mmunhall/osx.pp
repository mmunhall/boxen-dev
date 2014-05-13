class people::mmunhall::osx {

	osx::recovery_message { 'Nacho Mac': }
	include osx::global::enable_standard_function_keys
	include osx::global::expand_print_dialog
	include osx::global::expand_save_dialog
	include osx::global::natural_mouse_scrolling
	include osx::dock::autohide
	include osx::finder::show_all_on_desktop
	include osx::no_network_dsstores

	class { 'osx::mouse::button_mode':
		mode => 2
	}

}
