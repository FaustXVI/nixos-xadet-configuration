source $stdenv/setup

mkdir -p $out/nix-home/_emacs.d/
cp $src/init.el $out/nix-home/_emacs.d

