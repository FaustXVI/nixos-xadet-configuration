{ pkgs, lib, ...}:
let
 mylib = import ./mylib.nix { inherit lib; };
 inherit (mylib.home) pkgToFolder;
in with pkgs; {
    home.packages = [ xadet-gpg ];
    home.file = pkgToFolder ".gnupg" xadet-gpg;
}
