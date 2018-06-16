# Xadet's nix channel for personal configuration

In a terminal :

    nix-channel --add $https://faustxvi.github.io/nixos-xadet-configuration xadet
    nix-channel --update
    nix-env -qa "xadet.*"

In order to install password protected package :

     echo -n "Passphrase : "; read -s PASSPHRASE; export PASSPHRASE; nix-env -i ... ;unset PASSPHRASE;

or with fish :

     echo -n "Passphrase : "; read -i PASSPHRASE; export PASSPHRASE; nix-env -i ... ;unset PASSPHRASE;

In case you want to commit into this repository, don't forget to add the pre-commit hook to git
