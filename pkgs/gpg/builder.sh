source $stdenv/setup

mkdir -p $out/.gnupg
tar xvzf $src/gpg.tar -C $out/ 
rm -rf $out/.gnupg
