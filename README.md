# Xadet's nix channel for personal configuration

In a terminal :

    nix-channel --add $https://faustxvi.github.io/nixos-xadet-configuration xadet
    nix-channel --update
    nix-env -qa "xadet.*"
