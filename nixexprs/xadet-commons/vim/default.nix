{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-vim-1.1";
	builder = ./builder.sh;
	src = ./.;
}
