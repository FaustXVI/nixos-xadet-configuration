source $stdenv/setup

mkdir -p $out/.gnupg
gpg2  --homedir $out/.gnupg --batch --passphrase "$PASSPHRASE" --decrypt $src/gpg.tar.gpg | tar xvz -C $out/
rm -rf $out/.gnupg
