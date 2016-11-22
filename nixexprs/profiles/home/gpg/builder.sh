source $stdenv/setup

mkdir -p $out/nix-home/_gnupg
gpg2  --homedir /tmp --batch --passphrase "$PASSPHRASE" --decrypt $src/gpg.tar.gpg | tar xvz -C $out/nix-home/_gnupg

