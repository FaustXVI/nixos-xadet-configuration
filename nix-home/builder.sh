source $stdenv/setup

mkdir -p $out/nix-home $out/bin
cp $src/update-nix-home-links $out/bin/update-nix-home-links
chmod u+x $out/bin/update-nix-home-links
