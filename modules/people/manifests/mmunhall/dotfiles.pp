class people::mmunhall::dotfiles {

	$home = "/Users/${::boxen_user}"
	$workspace_dir = "${home}/Documents/workspace"

	repository { "${workspace_dir}/dotfiles":
		source => "git@github.com:${::github_login}/dotfiles.git",
	}

	repository { "${workspace_dir}/oh-my-zsh":
		source => "git@github.com:${::github_login}/oh-my-zsh.git",
	}

	file { "${home}/.zshrc":
		ensure  => link,
		target  => "${workspace_dir}/dotfiles/zsh/zshrc",
		require => Repository["${workspace_dir}/dotfiles"],
	}

	file { "${home}/.oh-my-zsh":
		ensure  => link,
		target  => "${workspace_dir}/oh-my-zsh",
		require => Repository["${workspace_dir}/oh-my-zsh"],
	}

}
