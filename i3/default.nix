{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-i3-config-1.0";
	builder = ./builder.sh;
	src = ./.;
}
