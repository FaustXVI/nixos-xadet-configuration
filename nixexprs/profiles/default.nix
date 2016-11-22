{ system ? builtins.currentSystem } @ args:

let
  home = import ./home (args // {inherit system;});
  soat = import ./soat (args // {inherit system;});
in (home // soat)


