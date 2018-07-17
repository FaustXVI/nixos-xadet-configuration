# Xadet home configuration

 * Clone this repo in .config/nixpkgs
 * run `nix-shell https://github.com/rycee/home-manager/archive/master.tar.gz -A install`
 * run `echo -n "Passphrase : "; read -i PASSPHRASE; export PASSPHRASE; home-manager switch ;set --erase PASSPHRASE;`
 * finish the installation of omf (cf. https://github.com/FaustXVI/omf-config)
