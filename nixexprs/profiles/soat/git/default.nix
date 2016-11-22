{ stdenv }:

stdenv.mkDerivation {
	name = "soat-gitconfig-1.0";
	builder = ./builder.sh;
	src = ./.;
}
