class people::mmunhall::repos {

	$home = "/Users/${::boxen_user}"
	$workspace_dir = "${home}/Documents/workspace"

	repository {
		"${workspace_dir}/canoe-caascore":
			source => "git@github.com:CanoeVentures/caas-core.git";

		"${workspace_dir}/canoe-cm":
			source => "git@github.com:CanoeVentures/Dynamic-Ad-Insertion-cm.git";

		"${workspace_dir}/canoe-ux":
			source => "git@github.com:CanoeVentures/canoe-ux.git";

		"${workspace_dir}/canoe-sec":
			source => "git@github.com:CanoeVentures/canoe-webappsec.git";

		"${workspace_dir}/canoe-admin":
			source => "git@github.com:CanoeVentures/caas-admin.git";

		"${workspace_dir}/canoe-billing":
				source => "git@github.com:CanoeVentures/dai-billing.git";

		"${workspace_dir}/canoe-metadata-sync":
			source => "git@github.com:CanoeVentures/metadata-sync.git";
	}

	# symlinks to the above repos
	file {
		"${home}/caascore":
			ensure  => link,
			target  => "${workspace_dir}/canoe-caascore",
			require => Repository["${workspace_dir}/canoe-caascore"];

		"${home}/cm":
			ensure  => link,
			target  => "${workspace_dir}/canoe-cm",
			require => Repository["${workspace_dir}/canoe-cm"];

		"${home}/ux":
			ensure  => link,
			target  => "${workspace_dir}/canoe-ux",
			require => Repository["${workspace_dir}/canoe-ux"];

		"${home}/sec":
			ensure  => link,
			target  => "${workspace_dir}/canoe-sec",
			require => Repository["${workspace_dir}/canoe-sec"];

		"${home}/admin":
			ensure  => link,
			target  => "${workspace_dir}/canoe-admin",
			require => Repository["${workspace_dir}/canoe-admin"];

		"${home}/billing":
			ensure  => link,
			target  => "${workspace_dir}/canoe-billing",
			require => Repository["${workspace_dir}/canoe-billing"];

		"${home}/sync":
			ensure  => link,
			target  => "${workspace_dir}/canoe-metadata-sync",
			require => Repository["${workspace_dir}/canoe-metadata-sync"];
	}

}
