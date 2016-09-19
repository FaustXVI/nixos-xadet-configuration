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
}
