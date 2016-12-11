{ stdenv }:

stdenv.mkDerivation {
	name = "home-gitconfig-1.5";
	builder = ./builder.sh;
	src = ./.;
}
