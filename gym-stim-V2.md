# Gym Stim — V2 lock
12 September 2026. Supersedes V1 body (38 × 190) and V1 Chamber C (orifice plate / 10 mm hole / pancake cups).
Design work continues from this file. CAD params must match this envelope.

## One-line product
Empty aluminium EDC stick. Three jobs: sniff or chalk on top, dime chews in the middle, three session-mix powder cells in the bottom. They load it. You sell the tube and the sleeves.

## Envelope

- **44 mm OD × 175 mm long.** Wall 2.0 mm. ID 40 mm.
- 6061-T6, type II anodise, dark grey / black. Pocket clip at 9 o’clock.
- One cylinder. Not a GoPro stack. Knurl on A rim and C grip only.
- Why 175 not 145: each C cell needs ~32 ml so a daily stack like carnitine + creatine + a normal greens scoop fits. AG1-sized tablespoons still overflow — print that.

```
z = 175     top of A puck
            A   bayonet puck                 22 mm
z = 153     A/B divider                      1.2
            B   dime clicker                 40 mm
z = 112     B/C divider + coarse C thread    1.2 + 8
            C   three wedges + ear track     ~95 mm usable column
z =   8     collar / ear home
z =   0     dump end (door shut)
TOTAL                                        175 × 44
```

Cell volume: three 120° wedges, ID ~38 mm, usable height ~85 mm → **~32 ml each**.
Case study (Damon): 1–2 g carnitine + 5 g creatine + a normal greens scoop ≈ 22–30 ml. Fits. AG1 heaped tbsp + creatine does not.

## Chamber A — bayonet puck
**Elite ships sniff. Same latch takes chalk later.**

- Quarter-turn, three lugs, 22 × 44 mm, flush.
- **Sniff puck:** 3–4 ml well in the puck, 4 mm face pinhole + shutter disc (twist ~40° to align). Recessed `NH3`. Body never holds ammonia.
- **Chalk puck (accessory):** 32 × 12 mm compressed MgCO3 wafer, rub face. No ammonia in that puck.
- Mid / Lite: blank or chalk on the same latch.
- Kill: screw-only junk cap, salt+chalk in one well, liquid chalk in A, pool-cue cubes.

## Chamber B — dime clicker
**Not an electrolyte-only product. Any 18 × 5.5 mm disc.**

- Twin wells, 4 discs each, 8 total. Cassette does **not** rotate.
- Priority throat: one 18.4 mm neck. Ledge so the second well cannot enter until the neck is empty. No open Y. No 180° rotor.
- 8 mm button at 3 o’clock. Oval chew window **under** the button, 18.5 × 7 mm. Clip at 9 o’clock.
- Followers + springs hold both stacks to the same ceiling.
- Reload: unscrew C, pull cassette out the bottom of B.
- Launch cassette **empty**.
- Official sleeves (same die, one formula per cassette): electrolyte, glucose, mint, magnesium, blank BYO. Caffeine only if 18 × 5.5 **and** ARTG listed — not V2 launch.
- Kill: Tic Tac, Polo, Nuun, gum, No-Doz as a named fit, cubes, dual-flavour in one well.

## Chamber C — three session cells + ear dump
**Each wedge is one gym. Fill from the tub. Ear empties that cell. No millilitres.**

### Fill (home)
- Coarse thread at the B/C waist. Whole C carrier unscrews.
- Three wedges open at the **top**. Scoop the tub. Desiccant in the lid.
- Screw carrier back. Do not fill through the dump end.

### Select
- Wedges keyed to the body. They do not spin.
- Collar ring 1 / 2 / 3. Fixed **pip** on the body points at the cell that will dump.
- Interlock: collar **will not turn** unless the ear is at Home.

### Dump (one control — the ear)
- One recessed ear on the collar. No push-face. No side button on C. No 10 mm hole. No USB geometry.
- Ear is slaved to two jobs on the same stroke:
  1. First ~3 mm: cam drops the **120° door** under the selected wedge only. Other two floors stay solid.
  2. Rest of stroke: same rod is the scraper. Travels that wedge and pushes powder out the open floor.
- Detents: **Home** (door shut, scraper parked at top) and **Empty** (door open, scraper at the dump). No Half. No 20 ml marks.
- Hold-to-dump. Send ear Home before the bag. Spring shuts the door on the way home.
- Invert over their bottle, pip on today’s number, pull ear to Empty, push ear Home, twist tomorrow shut.

### Why not pockets / partial clicks
- Invert + a full-sector door = gravity takes the whole cell. A scraper above the pile cannot portion.
- Pocket wheels under the bins fight “unscrew, scoop, go” and cannot be washed in 44 mm.
- Portion at the tub: one serve in the cell, or a full session mix. Three cells = three sessions.

### What a cell holds (~32 ml)
- Small pre (C4-class) — yes.
- Creatine 5 g — yes, alone or with carnitine.
- Normal greens scoop + creatine + 1–2 g carnitine — yes on 175 mm.
- Ghost-class heaped + creatine — tight / no.
- AG1 tablespoon + creatine — no.

## Outside map
- 9 o’clock: clip.
- 3 o’clock: B button + chew window under it.
- C ear: recessed in a shallow track on the lower third, dump-direction travel. Flush at Home so it does not snag.
- Tail face: solid. Not a port.

## Independence
- A off does not move B or C.
- B click does not vent A or C.
- C ear / collar / unscrew does not fire B.
- NH3 in the puck only. Powder in C only. Discs in the cassette only.

## Session
1. Home: fill three C cells, load B, charge A if Elite.
2. Rack: pip on today, invert, ear to Empty, ear Home.
3. Mid-set: click B once.
4. Heavy set: sniff A.
5. Empty B: swap cassette (C off).
6. Empty C: unscrew carrier at home.

## Launch carton (AU)
Empty body, empty sniff puck, empty B cassette, empty 3-cell C, desiccant, wipe card. No salts, no discs, no powder.

## First extras
1. Spare C carrier.
2. Spare B cassettes (empty, electrolyte, glucose, mint).
3. A chalk puck.
4. Blank A puck.
5. Flood sachet later — optional fill for people with no tub.

## Killed in V2
38 × 190 as the quote body. 10 mm orifice plate. USB-shaped holes. Stacked pancake cups. C millilitre syringe. Pocket meter. 180° chew rotor. Open Y. Half-dose ear. Caffeine sleeve as a V2 launch SKU.

## CAD
`cad/gymstim_params.scad` must read OD 44, L 175, B 40, A 22, C the remainder.
Open `cad/gymstim_assembly.scad`. Update modules to this C (ear + sector door + scraper), not the orifice plate.
V1 file stays as history. Do not tool V1 C.
