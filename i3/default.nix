{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-i3-config";
	builder = ./builder.sh;
	src = ./.;
}
