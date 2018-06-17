{ pkgs, ...}:
with pkgs; {
  home.packages = [ xadet-ssh ];
  home.file.".ssh" = {
    recursive = true;
    source = xadet-ssh;
  };
}
