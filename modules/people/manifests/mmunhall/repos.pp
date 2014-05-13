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

	file { "${home}/caascore":
		ensure  => link,
		target  => "${workspace_dir}/canoe-caascore",
		require => Repository["${workspace_dir}/canoe-caascore"],
	}

}
