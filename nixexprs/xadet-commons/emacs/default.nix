{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-emacs-1.2";
	builder = ./builder.sh;
	src = ./.;
}
