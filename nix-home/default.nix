{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-nix-home-1.0";
	builder = ./builder.sh;
	src = ./.;
}
