# Xadet's nix channel for personal configuration

In a terminal :

    nix-channel --add $https://faustxvi.github.io/nixos-xadet-configuration xadet
    nix-channel --update
    nix-env -qa "xadet.*"

In order to install password protected package :

     echo -n "Passphrase : "; read -s PASSPHRASE; export PASSPHRASE; nix-env -i ... ;unset PASSPHRASE;
