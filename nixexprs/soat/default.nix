{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
    soat-ssh = import ./ssh {
		inherit (pkgs) stdenv gnupg;
		inherit (builtins) getEnv;
	};
    soat-gitconfig = import ./git {
		inherit (pkgs) stdenv;
	};
}
