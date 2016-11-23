source $stdenv/setup

mkdir -p $out/nix-home/_gnupg $out/.gnupg
gpg2  --homedir $out/.gnupg --batch --passphrase "$PASSPHRASE" --decrypt $src/gpg.tar.gpg | tar xvz -C $out/nix-home/_gnupg
rm -rf $out/.gnupg
