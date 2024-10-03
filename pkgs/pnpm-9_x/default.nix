# This file was autogenerated. Edit the update.ts file instead.
{pkgs ? import <nixpkgs> { inherit system; }, system ? builtins.currentSystem}:

pkgs.stdenv.mkDerivation rec {
  name = "pnpm";
  version = "9.12.0";
  src = pkgs.fetchurl {
    url = "https://registry.npmjs.org/pnpm/-/pnpm-9.12.0.tgz";
    sha512 = "Sr9yUITXvLr71yi/x77mHy95H5d/2HVCs1edyyNQTRcNRjN5ReTGZIXNEtWIoMDlcO2cR358zdhQfPBfP5Lqyg==";
  };
  doCheck = true;
  phases = [ "unpackPhase" "installPhase" ];
  installPhase = ''
    mkdir $out
    cp -r * $out
    mv $out/bin/pnpm.cjs $out/bin/pnpm
    mv $out/bin/pnpx.cjs $out/bin/pnpx
    chmod +x $out/bin/{pnpm,pnpx}
  '';
}

