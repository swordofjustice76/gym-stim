# Gym Stim CAD — 44 x 145 Option C

OpenSCAD. Preview F5. Set EXPLODE = 1 in gymstim_assembly.scad to pull it apart.

Replaces the old 38 x 190 / 10-tab / single-flask models.

## How the three mechanisms move

**A sniff puck** — Bayonet, three lugs. ~3.6 ml well in the puck. 4 mm pinhole + shutter disc. Twist shutter to align holes. Body never holds ammonia.

**B chew clicker** — Cassette does not rotate. Two 18 mm wells, 4 discs each, followers keep both stacks on the same ceiling. One 18.4 mm neck. Left well hits a 2 mm ledge until the neck is empty. Button retracts the gate. Disc leaves an 18.5 x 7 mm oval window under the button. Reload: unscrew C, pull cassette out the bottom of B.

**C powder** — Three 120 deg wedges. End cap is the orifice plate with one ROUND 10 mm hole. Wedges keyed so they do not spin. Body pip points at 1 / 2 / 3. Invert to dump. Unscrew C at the waist, scoop into the open tops. Not through the dump hole.

## Files

- gymstim_params.scad — every number
- gymstim_body.scad — tube, clip, pip, exit, button bore
- gymstim_puck_a.scad — bayonet puck + shutter
- gymstim_chew_b.scad — twin cassette, gate, button
- gymstim_powder_c.scad — wedges + plate, which=1/2/3
- gymstim_assembly.scad — stack it
