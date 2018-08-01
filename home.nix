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
      wpsoffice
      discord
      spotify
      slack
      xpdf
      vlc
      emacs
  ];
  home.file.".nix-channels".source = ./nix-channels;
  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
  programs = {
    home-manager = {
      enable = true;
      path = https://github.com/rycee/home-manager/archive/master.tar.gz;
    };
  };
}
