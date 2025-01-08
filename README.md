# Nix Flake for Node package managers
This repository is a Nix flake packaging the npm/yarn/pnpm.

Including:
```
npm-6_x
npm-8_x
npm-9_x
npm-10_x
npm-11_x
pnpm-6_x
pnpm-7_x
pnpm-8_x
pnpm-9_x
pnpm-10_x
yarn-1_x
```


# Usage
In your `flake.nix` file:
```shell
{
  inputs.pms.url = "github:miloas/node-pms-overlay";

  outputs = { self, pms, ... }: {
    ...
  };
}
```
