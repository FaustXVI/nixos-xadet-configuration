{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-gitconfig-1.1";
	builder = ./builder.sh;
	src = ./.;
}
