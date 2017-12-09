{ system ? builtins.currentSystem } :

with import <nixpkgs> { inherit system;};

stdenv.mkDerivation {
	name = "xadet-omf-1.4";
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
        mv bundle channel theme $HOME/.config/omf
        cd $HOME
        rm -r .nix-defexpr .cache .config/fish/fishd.nixos
        unlink .nix-profile
        mv .config _config
        mv .local _local
    '';
}
