{ stdenv }:

stdenv.mkDerivation {
	name = "xadet-ssh-1.0";
	builder = ./builder.sh;
	src = ./.;
}
