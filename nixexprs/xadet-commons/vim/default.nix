{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-vim-1.0";
	builder = ./builder.sh;
	src = ./.;
}
