{ stdenv, gnupg, getEnv }:

stdenv.mkDerivation {
	name = "xadet-gpg-1.0";
	builder = ./builder.sh;
	src = ./.;
	buildInputs = [ gnupg ];
	PASSPHRASE = getEnv "PASSPHRASE";
}
