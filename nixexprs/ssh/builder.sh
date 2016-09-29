source $stdenv/setup

gpg2 -o $src/id_rsa --decrypt $scr/id_rsa.gpg
mkdir -p $out/nix-home/_ssh
cp $src/id_rsa $out/nix-home/_ssh/id_rsa
cp $src/id_rsa.pub $out/nix-home/_ssh/id_rsa.pub
cp $src/config $out/nix-home/_ssh/config

