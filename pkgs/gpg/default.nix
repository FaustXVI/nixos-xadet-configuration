{ stdenv, ... }:

stdenv.mkDerivation {
	name = "xadet-gpg-2.0";
	builder = ./builder.sh;
	src = ./.;
    files = [ "reader_0.status" "private-keys-v1.d" "pubring.kbx" "trustdb.gpg" ];
}
