class people::mmunhall {

	notify { 'class people::mmunhall declared': }

	include people::mmunhall::applications
	include people::mmunhall::osx
	include people::mmunhall::dotfiles
	include people::mmunhall::hosts

}
