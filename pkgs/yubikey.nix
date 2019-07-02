{ pkgs, ...}:
with pkgs; {
  home.file.".config/Yubico/u2f_keys".source = ./u2f_keys;
}
