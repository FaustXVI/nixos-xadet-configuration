{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-i3-config-1.3";
	builder = ./builder.sh;
	src = ./.;
}
