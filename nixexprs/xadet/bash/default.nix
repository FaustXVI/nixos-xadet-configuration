{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-bash-1.1";
	builder = ./builder.sh;
	src = ./.;
}
