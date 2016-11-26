{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-emacs-1.0";
	builder = ./builder.sh;
	src = ./.;
}
