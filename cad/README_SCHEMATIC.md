# GymStim — Three-Tier Schematic

Visual companion to the CAD files in this folder. Open `gymstim-three-tier-schematic.svg` in any browser or GitHub preview.

## What it shows
- **Lite** — cheapest body, no salt chamber, ~90 ml flask, gravity chew gate.
- **Mid** — anodised aluminium, full mechanism, 70 ml flask with fill lines.
- **Elite** — stainless, all attachments, replaceable salt cap with twist port.

## Design rules baked in
- One 38 × 190 mm cylinder family across all three tiers.
- Shared chew cassette and flask interface — one consumable spine.
- Salts are Elite-only so cheaper bodies stay clean on the label.
- Max two actions to dose anything: twist, click, or pour.

## Related files
- `gymstim_body.scad` — parametric body (flip `tier` between lite/mid/elite)
- `gymstim_chew_gate.scad` — B3 one-click vs Lite gravity
- `gymstim_flask.scad` — C1 screw-off + C3 taper pour
- `gymstim_salt_cap.scad` — A5 replaceable cap
- `gymstim_shot_capsule.scad` — standalone pre-workout shot SKU
- `gymstim_assembly.scad` — stacked view of all modules
