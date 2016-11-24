{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-bash-1.2";
	builder = ./builder.sh;
	src = ./.;
}
