{ stdenv, gnupg, getEnv }:

stdenv.mkDerivation {
	name = "xadet-gpg-1.0";
	builder = ./builder.sh;
	src = ./.;
    files = [ "gpg.conf" "private-keys-v1.d" "pubring.gpg" ];
	buildInputs = [ gnupg ];
	PASSPHRASE = getEnv "PASSPHRASE";
}
