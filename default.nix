{
  pkgs ? import <nixpkgs> {},
  system ? builtins.currentSystem,
}: let pms = {
  npm-6_x = pkgs.callPackage ./pkgs/npm-6_x { };
  npm-8_x = pkgs.callPackage ./pkgs/npm-8_x { };
  pnpm-6_x = pkgs.callPackage ./pkgs/pnpm-6_x { };
  pnpm-7_x = pkgs.callPackage ./pkgs/pnpm-7_x { };
  pnpm-8_x = pkgs.callPackage ./pkgs/pnpm-8_x { };
  yarn-1_x = pkgs.callPackage ./pkgs/yarn-1_x { };

};
default = pms.npm-8_x.overrideAttrs  (oldAttrs: {
  meta.priority = 0;
});
in pms // {"default" = default;}
