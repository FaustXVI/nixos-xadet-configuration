{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-gitconfig-1.2";
	builder = ./builder.sh;
	src = ./.;
}
