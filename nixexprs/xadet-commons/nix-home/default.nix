{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-nix-home-1.2";
	builder = ./builder.sh;
	src = ./.;
}
