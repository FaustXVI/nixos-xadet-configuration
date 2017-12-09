{ system ? builtins.currentSystem } :

with import <nixpkgs> { inherit system;};

stdenv.mkDerivation {
	name = "xadet-omf-1.7";
	src = ./.;
    buildInputs = [
        curl
        fish
    ];
    SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt;
    buildPhase = ''
        curl -L --insecure https://get.oh-my.fish > install
    '';
    installPhase = ''
        mkdir -p $out/nix-home
        export HOME=$out/nix-home
        fish install --noninteractive
        mkdir -p $HOME/.config/fish/functions
        cp fish_user_key_bindings.fish $HOME/.config/fish/functions/
        cd $HOME
        rm -r .nix-defexpr .cache .config/omf .config/fish/fishd.nixos
        unlink .nix-profile
        mv .config _config
        mv .local _local
    '';
}
