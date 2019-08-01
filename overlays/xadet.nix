self: super:
{
    xadet-gpg = import ../pkgs/gpg {
        inherit (super) stdenv gnupg ;
        inherit (builtins) getEnv;
    };
}
