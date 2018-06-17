{ pkgs, ...}:
with pkgs; {
  home.packages = [ xadet-gpg ];
  home.file.".gnupg" = {
    recursive = true;
    source = xadet-gpg;
  };
}
