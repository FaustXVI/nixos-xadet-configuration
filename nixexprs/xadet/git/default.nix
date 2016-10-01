{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-gitconfig-1.0";
	builder = ./builder.sh;
	src = ./.;
}
