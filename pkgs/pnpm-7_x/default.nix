# This file was autogenerated. Edit the update.ts file instead.
{pkgs ? import <nixpkgs> { inherit system; }, system ? builtins.currentSystem}:

pkgs.stdenv.mkDerivation rec {
  name = "pnpm";
  version = "7.13.1";
  src = pkgs.fetchurl {
    url = "https://registry.npmjs.org/pnpm/-/pnpm-7.13.1.tgz";
    sha512 = "Nu1LzxlH3qdIFe0DJ5SciqBl9i7t/eW+c0zKf9g8TXRo20EhXy/e9YwCLY2fEwbIYL/3gZ4zuys010PRpsbHFQ==";
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
