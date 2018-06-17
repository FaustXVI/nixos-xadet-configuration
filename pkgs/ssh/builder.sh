source $stdenv/setup

mkdir -p $out/.gnupg
gpg2 --ignore-mdc-error --homedir $out/.gnupg --batch --passphrase "$PASSPHRASE" -o $out/id_rsa --decrypt $src/id_rsa.gpg
cp $src/id_rsa.pub $out/id_rsa.pub
cp $src/config $out/config
rm -rf $out/.gnupg
