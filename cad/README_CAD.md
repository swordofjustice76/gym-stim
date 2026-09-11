# GymStim CAD & Mechanisms

Parametric OpenSCAD models for the three-tier line (Lite / Mid / Elite) plus the screw-on shot capsule.

## Files
- `gymstim_body.scad` — main parametric body (38 mm × 190 mm), three tactile zones, shared consumable spine.
- `gymstim_chew_gate.scad` — B3 one-click gate (Elite/Mid) and Lite gravity variant.
- `gymstim_flask.scad` — 70 ml (Lite ~90 ml) screw-off flask with C3 taper pour + desiccant puck.
- `gymstim_salt_cap.scad` — Elite-only A5 replaceable salt cap with twist port.
- `gymstim_shot_capsule.scad` — standalone pre-workout shot capsule (screw-on shaker style).
- `gymstim_assembly.scad` — exploded + assembled views for visualization.
- `README_CAD.md` — this file.

## How to view
1. Open any `.scad` in OpenSCAD (free) or paste into https://modelrift.com (browser, no install).
2. Hit F5 for preview, F6 for render.
3. Change the `tier` variable at the top: `"lite"`, `"mid"`, `"elite"`.

## Design rules baked in
- One clean cylinder, three tactile zones (knurl / smooth / knurl).
- No visible seams between chambers.
- Max two actions to dose anything (one hand, no billion caps).
- Salts = Elite only (legal wall intact).
- Same chew cassette + same flask across all tiers → shared consumable spine.
- 3–4 day carry target via fill lines, not promises.

See `gymstim_body.scad` for the master parameter block.
