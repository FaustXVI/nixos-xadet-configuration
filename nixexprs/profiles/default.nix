{ system ? builtins.currentSystem } @ args:

let
  home = import ./home (args // {inherit system;});
in (home)


