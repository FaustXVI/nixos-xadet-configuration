{ stdenv }:

stdenv.mkDerivation {
	name = "soat-gitconfig-1.1";
	builder = ./builder.sh;
	src = ./.;
}
