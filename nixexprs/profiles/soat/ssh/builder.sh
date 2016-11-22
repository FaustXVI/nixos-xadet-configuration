source $stdenv/setup

mkdir -p $out/nix-home/_ssh
gpg2  --homedir /tmp --batch --passphrase "$PASSPHRASE" -o $out/nix-home/_ssh/id_rsa --decrypt $src/id_rsa.gpg
cp $src/id_rsa.pub $out/nix-home/_ssh/id_rsa.pub
cp $src/config $out/nix-home/_ssh/config

