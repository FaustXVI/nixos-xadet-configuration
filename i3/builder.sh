source $stdenv/setup

# mkdir -p $home/.config/i3
# cp config $home/.config/i3/
mkdir -p $out/i3 $out/bin
cp $src/config $out/i3
echo "ln -f -s ~/.nix-profile/i3 -t ~/.config" >> $out/bin/updateNixLinks
chmod +x $out/bin/updateNixLinks

