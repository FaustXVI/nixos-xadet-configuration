{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
	home-ssh = import ./ssh {
		inherit (pkgs) stdenv gnupg;
		inherit (builtins) getEnv;
	};

	home-gpg = import ./gpg {
		inherit (pkgs) stdenv gnupg;
		inherit (builtins) getEnv;
	};

	home-gitconfig = import ./git {
		inherit (pkgs) stdenv;
	};
}
