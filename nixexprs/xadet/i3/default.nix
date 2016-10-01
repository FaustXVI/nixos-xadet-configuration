{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-i3-config-1.2";
	builder = ./builder.sh;
	src = ./.;
}
