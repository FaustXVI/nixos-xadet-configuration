{ stdenv, gnupg, getEnv }:

stdenv.mkDerivation {
	name = "xadet-ssh-1.0";
	builder = ./builder.sh;
	src = ./.;
  files = [ "id_rsa" "id_rsa.pub" "config" ];
	buildInputs = [ gnupg ];
	PASSPHRASE = getEnv "PASSPHRASE";
  outputHashMode = "recursive";
  outputHashAlgo = "sha256";
  outputHash = "07aq4l6xx6khb0yk1mad3hn2qv5pab0n62rz4q2a0idkb51mypl5";
}
