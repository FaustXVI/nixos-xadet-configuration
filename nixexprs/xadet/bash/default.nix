{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-bash-1.0";
	builder = ./builder.sh;
	src = ./.;
}
