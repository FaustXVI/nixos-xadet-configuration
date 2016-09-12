{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  i3 = import ./i3 {
    inherit (pkgs) stdenv;
  };
}
