{ stdenv }:

stdenv.mkDerivation {
	name = "home-gitconfig-1.2";
	builder = ./builder.sh;
	src = ./.;
}
