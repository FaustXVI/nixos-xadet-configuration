{ stdenv, gnupg, getEnv }:

stdenv.mkDerivation {
	name = "xadet-gpg-1.0";
	builder = ./builder.sh;
	src = ./.;
    files = [ "gpg.conf" "private-keys-v1.d" "pubring.gpg" ];
	buildInputs = [ gnupg ];
	PASSPHRASE = getEnv "PASSPHRASE";
  outputHashMode = "recursive";
  outputHashAlgo = "sha256";
  outputHash = "0jmip9q1d3bgfqs4n058hzgmn5j1pagyinjxskas3ym6bybrg2fv";
}
