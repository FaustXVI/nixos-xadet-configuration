{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-i3-config-1.4";
	builder = ./builder.sh;
	src = ./.;
}
