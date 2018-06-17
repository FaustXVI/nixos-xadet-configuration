{ stdenv, gnupg, getEnv }:

stdenv.mkDerivation {
	name = "home-ssh-1.0";
	builder = ./builder.sh;
	src = ./.;
    files = [ "id_rsa" "id_rsa.pub" "config" ];
	buildInputs = [ gnupg ];
	PASSPHRASE = getEnv "PASSPHRASE";
}
