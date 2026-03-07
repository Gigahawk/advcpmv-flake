{ inputs, ... }:
{
  perSystem =
    {
      pkgs,
      ...
    }:
    {
      packages = rec {
        coreutils = pkgs.callPackage ../pkgs/coreutils/default.nix { };
        advcpmv = pkgs.callPackage ../pkgs/advcpmv.nix { inherit coreutils; };
        default = advcpmv;
      };
    };
}
