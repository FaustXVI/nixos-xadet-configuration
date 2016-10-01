{ system ? builtins.currentSystem } @ args:

import ./xadet (args // {inherit system;})
