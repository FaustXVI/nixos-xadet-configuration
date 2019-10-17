{ pkgs, ...}:
with pkgs; {
  imports = [
    ./pkgs
  ];
  home.packages = [
      firefox
      google-chrome
      thefuck
      peco
      powerline-fonts
      jetbrains.idea-ultimate
      nix-index
      rlwrap
      discord
      spotify
      slack
      xpdf
      vlc
      emacs
      feh
      simplescreenrecorder
      gimp
      shotwell
      docker-compose
      blueman
      libreoffice
      patchelf
      autoPatchelfHook
      srm
      dia
      fzf
      gitAndTools.hub
      autojump
      yubioath-desktop
      nix-prefetch-git
      nix-prefetch-scripts
      any-nix-shell
  ];
  home.file.".nix-channels".source = ./nix-channels;
  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
    enableExtraSocket = true;
  };
  programs = {
    fish = {
      enable = true;
      promptInit =''
        any-nix-shell fish --info-right | source
      '';
    };
    home-manager = {
      enable = true;

    };
  };
}
