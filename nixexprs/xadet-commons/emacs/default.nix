{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-emacs-1.1";
	builder = ./builder.sh;
	src = ./.;
}
