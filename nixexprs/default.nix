{ system ? builtins.currentSystem } @ args:

let
  xadet = import ./xadet (args // {inherit system;});
  soat = import ./soat (args // {inherit system;});
in (xadet // soat)
