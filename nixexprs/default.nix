{ system ? builtins.currentSystem } @ args:

let
  profiles = import ./profiles (args // {inherit system;});
  commons = import ./xadet-commons (args // {inherit system;});
in (profiles // commons)


