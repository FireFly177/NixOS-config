{ config, pkgs, ... }:

{
	programs.plasma = {
		enable = true;
		workspace = {
			cursor = {
				size = 24;
		};
	};

	};
}
