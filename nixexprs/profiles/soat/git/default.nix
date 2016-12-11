{ stdenv }:

stdenv.mkDerivation {
	name = "soat-gitconfig-1.2";
	builder = ./builder.sh;
	src = ./.;
}
