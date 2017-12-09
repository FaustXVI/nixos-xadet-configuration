{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
	xadet-i3-config = import ./i3 {
		inherit (pkgs) stdenv;
	};

	xadet-nix-home = import ./nix-home {
		inherit (pkgs) stdenv;
	};

	xadet-bash = import ./bash {
		inherit (pkgs) stdenv;
	};

	xadet-vim = import ./vim {
		inherit (pkgs) stdenv;
	};
	xadet-emacs = import ./emacs {
		inherit (pkgs) stdenv;
	};
	xadet-omf = import ./omf {};
}
