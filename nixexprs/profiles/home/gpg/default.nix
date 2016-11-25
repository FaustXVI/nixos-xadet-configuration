{ stdenv, gnupg, getEnv }:

stdenv.mkDerivation {
	name = "home-gpg-1.1";
	builder = ./builder.sh;
	src = ./.;
	buildInputs = [ gnupg ];
	PASSPHRASE = getEnv "PASSPHRASE";
}
