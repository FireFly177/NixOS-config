{ config, pkgs, ... }:

{
	programs.plasma = {
		enable = true;
		workspace = {
			cursor = {
				size = 24;
				# size = 72;
			};
		};
	};
}
