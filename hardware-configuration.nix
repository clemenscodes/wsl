{
  config,
  lib,
  modulesPath,
  ...
}: {
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
