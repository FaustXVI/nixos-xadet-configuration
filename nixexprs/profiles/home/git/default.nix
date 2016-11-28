{ stdenv }:

stdenv.mkDerivation {
	name = "home-gitconfig-1.3";
	builder = ./builder.sh;
	src = ./.;
}
