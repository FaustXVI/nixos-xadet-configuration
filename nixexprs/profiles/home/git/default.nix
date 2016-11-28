{ stdenv }:

stdenv.mkDerivation {
	name = "home-gitconfig-1.4";
	builder = ./builder.sh;
	src = ./.;
}
