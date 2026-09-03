# Tin Nails and Strips

Adds a tin variant of metal nails and strips.

Vanilla `metalnailsandstrips` covers copper through electrum but has no tin, even
though tin is anvil-workable and tin plate exists. This mod fills that gap so tin
can be forged into nails and strips like any other metal.

The motivation is VS Roofing: its metal roof already accepts nails and strips (and
already declares tin textures for them), but without a tin variant every tin roof
block costs a full tin plate. With this mod one tin ingot forges into 4 or 8 sets
of nails and strips, i.e. 4 or 8 roof blocks.

## What it patches

All three are JSON patches against `game:` assets, no DLL.

- `metalnailsandstrips.json` — adds `*-tin` to `allowedVariants`, plus its
  `reinforcementStrength`, `materialDensity` and `combustibleProps` (smelts back
  to `ingot-tin`).
- `recipes/smithing/nails.json` — adds `tin` to both nail recipes' allowed metals.
- `lang/en.json` — display name "Nails and strips (Tin)".

## Build

```sh
./build.sh   # -> dist/tinnailsandstrips_<version>.zip
```

Drop the zip in `VintagestoryData/Mods/` on client and server.

## Tunable knobs

In `assets/tinnailsandstrips/patches/survival-itemtypes-resource-metalnailsandstrips.json`:
`reinforcementStrength` is a soft-metal guess (50); `materialDensity` (7260) is
copied from tin plate. Neither affects craftability.
