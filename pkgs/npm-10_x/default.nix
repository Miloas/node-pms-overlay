# This file was autogenerated. Edit the update.ts file instead.
{pkgs ? import <nixpkgs> { inherit system; }, system ? builtins.currentSystem}:

pkgs.stdenv.mkDerivation rec {
  name = "npm";
  version = "10.9.0";
  src = pkgs.fetchurl {
    url = "https://registry.npmjs.org/npm/-/npm-10.9.0.tgz";
    sha512 = "ZanDioFylI9helNhl2LNd+ErmVD+H5I53ry41ixlLyCBgkuYb+58CvbAp99hW+zr5L9W4X7CchSoeqKdngOLSw==";
  };
  doCheck = true;
  phases = [ "unpackPhase" "installPhase" ];
  installPhase = ''
    mkdir $out
    cp -r * $out
    chmod +x $out/bin/{npm,npx,node-gyp-bin/node-gyp}
  '';
  meta.priority = "100"; # Prevents collision with Node's built-in npm
}
