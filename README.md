# Xadet home configuration

 * Clone this repo in .config/nixpkgs
 * run `nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager`
 * run `nix-channel --update`
 * run `nix-shell '<home-manager>' -A install`
 * run `home-manager switch`
 * finish the installation of omf (cf. https://github.com/FaustXVI/omf-config)
