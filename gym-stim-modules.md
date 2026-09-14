# Gym Stim — module design (ICD)
14 September 2026. Design each module to the interface. CAD starts here.

Parent lock: `gym-stim-modular.md`
Pack D mechanism: `gym-stim-B-redesign.md`
C dump: `gym-stim-C-redesign.md`
Fit: `gym-stim-chamber-fit.md`

**Status:** Locked envelopes and interfaces. Springs, seal durometer, bayonet angle = proto.

---

## 0. Shared datums

Envelope **LOCKED**

| Datum | Value |
|---|---|
| Body OD | 44.0 mm |
| Body wall | 2.0 mm |
| Body ID | 40.0 mm |
| Overall length, pucks on, door shut | 175 mm |
| Material, spine | 6061-T6, type II anodise |
| Clock | 12 = dump axis / A face. 3 = button + window. 9 = clip |

Axial stack, A-end = +Z, dump = 0

```text
z = 175        A puck face
z = 153        A / body split (puck 22 mm)
z = 153→113    B bay (40 mm)
z = 113        B / C coarse thread start
z = 113→8      C column (~105 mm raw; ~95 mm usable after door stack)
z = 8→0        door + gasket + exit
```

Usable C height and exact thread length are CAD. Do not move A 22 or B 40 without a new lock.

### Clocking key (all B packs)

A 2 mm axial rib at **3 o’clock** on the body ID. Packs have a matching slot.

- Pack will not seat 180° out.
- Window in the pack lines up with the body window.
- Button pin in the pack lines up with the body button hole.

### Body button (shared actuator)

| | |
|---|---|
| Hole | Ø8.0 mm at 3 o’clock, B bay mid-height (z ≈ 133) |
| Travel | 4.0 mm inward LOCKED max |
| Return | Body does **not** spring the button. The pack does. |
| Pack D pin | Long stroke, ~10–14 mm shuttle via lever or direct. Button feel stiff. |
| Pack T pin | Short stroke, ~4 mm door. Button feel softer. |
| Pack AB pin | Same as T if side door fitted. Blind plug if not. |
| Empty bay | Button floats; do not ship without a pack. |

### B extract

C unscrews at z = 113. Pack slides out **toward the dump end** through the open ID. No B door on the aluminium.

### B/C thread

- Coarse, 2-start, ~6 mm pitch class (CAD).
- Outside the powder path.
- Hard stop + 15–20 N·cm hand tight. No tools.
- O-ring groove on C collar, food-grade, keeps sweat out of B. Not a pressure vessel.

### A bayonet

- Three lugs, 60° engage, 15° lock. Click detent.
- Puck cannot leave under axial pull of a clip-draw.
- Latch is on the body. Pucks are the male lugs.
- Wipe face at the split. Ammonia residue stays on the puck.

---

## M0 — Spine (one SKU)

Aluminium is dumb. It is a bore, a latch, a thread, a clip, a button hole, a window cheek.

| Feature | Spec |
|---|---|
| Tube | Ø44 × 175, 6061-T6 |
| Clip | 9 o’clock, rivet or screw into a boss. Deep-carry, sits above B ring. |
| A latch | Female bayonet, z = 153 |
| B window | Oval **18.5 × 7.0 mm**, 3 o’clock, centre z ≈ 133 |
| B button hole | Ø8.0, same centreline as window |
| B key rib | 2 × 2 mm, 3 o’clock, full B height |
| I/II ring track | Optional groove at z ≈ 148. Pack D ring rides it. Pack T/AB ignore it. |
| C female thread | z = 113 |
| Anodise | Type II, dark. Laser mark `GYM STIM` + serial later. |

No powder touches the spine. No ammonia lives in the spine.

**BOM M0:** tube, clip, clip fastener, A latch (if separate insert), C thread (cut or insert).

---

## M1 — A pucks (three SKUs, one latch)

Envelope: Ø44 face, **22.0 mm** tall, three male lugs.

### M1-S sniff

| | |
|---|---|
| Well | 3–4 ml, Ø ~22 × 10 mm class cavity under a sintered / cotton pad |
| Seal | Face gasket so the body bore never sees NH3 |
| Fill | Factory later. Launch puck **empty**, well capped |
| Mark | Recessed `A` or a pip. No ammonia print on Elite carton in AU empty launch |

### M1-C chalk

| | |
|---|---|
| Seat | Ø32.2 × 12.4 mm pocket for a 32 × 12 mm MgCO3 wafer |
| Face | Open rub face, 0.2 mm proud of the wafer so the puck rim takes knocks |
| Wafer | Later SKU. Not in launch box |

### M1-B blank

Closed cap. Same lugs. Mass-matches sniff so the stick does not feel hollow.

### M1-L lid (Pack AB only)

Identical outside to blank. Inside is a flat face that seals Pack AB’s top rim. Soft gasket in the puck, not in the liner, so AB can be washed.

**Rule:** a puck that has held ammonia is never used as M1-L. Colour or pip the sniff puck differently.

---

## M2 — Pack D (chew dispenser)

Envelope: Ø39.6 OD (slip in 40.0 ID), **40.0 mm** tall, key slot at 3 o’clock.

### Cassette

- Food-contact polymer (proto: PETG / nylon 12. Prod: PP or copolyester, food letter later).
- Two wells, 180° apart. Septum ≥ 2.8 mm.
- Well bore **Ø18.6 mm**. Depth for four discs + follower + dead spring = ~32 mm stack inside 40.
- Disc band **Ø17.4–18.4 × 5.0–6.0**. Nominal 18.0 × 5.5.
- Pocket **18.6 × 6.2 mm**, one disc only.
- Each well: follower (polymer) + stainless spring isolated from the chew face.
- Parked well: solid roof. Armed well: open to shuttle HOME.

### Shuttle

- Plate in a track under the 3 o’clock cheek.
- Stroke **10–14 mm** (CAD). HOME over armed well. PRESENT at window.
- Closed roof in travel. Open cheek only at window.
- Return spring in the pack.
- Follower cannot enter the pocket (fifth click = dead).

### I/II ring

- 180° index of the cassette or a cage around the wells.
- Hard detents I / II. No mid.
- Interlock: ring moves only if shuttle HOME. Shuttle moves only if ring in detent.
- Knurl pitch different from C selector.

### Button coupling

Pack D presents a pin through the body Ø8 hole. Press → shuttle PRESENT. Release → HOME.

### Window

Pack D window is a slot that sits behind the body oval. Disc presents **2–3 mm proud**.

### Reload

C off. Pack out the tail. Thumb 4+4 or swap sleeve. Empty at launch.

**BOM M2:** cassette, septum (moulded), 2 followers, 2 springs, shuttle, shuttle spring, ring, detents, button pin, optional 16.2 mm collars (later).

Do not put Hydralyte, Nuun, Dex4, gum, gummies, strips in this pack.

---

## M3 — Pack T (dry tin, press-and-tip)

Same envelope as D: Ø39.6 × **40.0 mm**, same key, same button hole.

### Cup

- ~**32–35 ml** after door and lip.
- Smooth bore. No wells.
- Top closed (body / A split is not an opening). Fill: C off, pack out, thumb in from the tail face, or a small cap on the tail of T.

Fill from the **tail of the pack**, not through the side door.

### Sector door

| | |
|---|---|
| Type | Sliding sector behind the body window |
| Port | **18–20 mm** when open |
| Lip | 2–3 mm internal dam at the sill |
| Motion | Deadman. Press = open. Release = HOME |
| Spring | Stainless, sized so a wet wrap grip at C-pour force does not crack the door. **Proto over a bottle.** |
| Seal | Felt / elastomer wiper on the door edge so crumbs stay in the cup |

Not a stay-open latch. Not a flip lid. Not a cascade.

### Button feel

Stroke **~4 mm**. Softer than Pack D. User can tell packs apart with eyes shut.

### I/II ring

T has no ring. Body groove empty.

### What it holds

Wrapped gum, Revvies sleeves, mints, hand-picked gummies, foam plugs, hair ties, a ring.

Not loose powder. Not ammonia. Not a standing 3 ml peptide vial (height). A 2R vial is a rattle, not a feature.

**BOM M3:** cup, sector door, door spring, button pin, sill lip (moulded), tail fill cap if needed, wiper.

---

## M4 — Pack AB (A+B storage)

Liner from z = 153 down through the B bay. **~62 mm** tall inside (22 A + 40 B). OD 39.6 in B, stepped to seal at the A split.

| | |
|---|---|
| Volume | **50–55 ml** |
| Top | Open rim. Sealed by **M1-L** (A bayonet cap) |
| Bottom | Closed. Does not open into C |
| Side door | Same deadman sector as T, optional v1. Prefer **yes** so mid-set does not mean uncapping A |
| Key | Same 3 o’clock rib |
| Button pin | T-spec if side door fitted |

Refill: bayonet off M1-L, drop in from the nose, cap on.

Glass 2R vials: two will stand. That is BYO, not a printed claim. No foam until a vial is calipered.

When AB is in: no sniff, no chalk, no D, no T.

**BOM M4:** liner, optional door kit (= T kit), uses M1-L as lid.

---

## M5 — C powder module

Always powder. Three isolated 120° wedges.

### Cartridge

| | |
|---|---|
| OD | Slides in body ID / is the lower body ID if C is the removable tail |
| Usable cell | **~32 ml** × 3 |
| Wedges | Fixed. They do not rotate |
| Fill | From the **top**, C off the stick |
| Dump | Gravity through selected outlet only |

Preferred build: C is a removable tail — polymer cartridge inside an aluminium sleeve that carries the male coarse thread, selector, slider track, door.

### Selector

Collar at the B/C waist or on C barrel. Detents **1 / 2 / 3**. Body pip. Does not unlock the door.

### Door

Rotary shutter. One **120°** open sector.

- LOCKED: all outlets covered.
- UNLOCKED: sector over the already-selected cell only.

Hard detents. Separate action from selector.

### Seal

Elastomer between outlet plane and door. Lands around each outlet **and** radial barriers between cells. Highest-risk part. Proto first.

Food-contact TBD. Replaceable.

### Paddle + slider

- 120° sector paddle on the selected wedge only.
- Slider on the outside, recessed track, 9–12 o’clock so it does not fight the 3 o’clock B button.
- HOME retained. Travel to cell floor, light wipe, do not compact.
- Interlocks:
  - Door LOCKED → slider dead
  - Door UNLOCKED → selector dead
  - Slider not HOME → door cannot lock, selector dead

### Dump end

Exit ring at z = 0. Large enough that 32 ml fluffy powder does not bridge. No ml marks.

**BOM M5:** Al C sleeve (if separate), polymer cartridge (3 wedges), selector, door, gasket, paddle, slider, interlock bits, thread O-ring, optional desiccant in fill lid.

---

## 1. Interface map

```text
M1 puck  --bayonet--  M0 spine
M2/M3    --key+pin--  M0 B bay     (extract toward C)
M4       --key+pin--  M0 B bay + A split
M1-L     --bayonet--  M0 / M4 rim
M5       --coarse--   M0 z=113
```

Any M2/M3/M4 that seats must:

1. Fill the key.
2. Present a pin or a blind at the button hole.
3. Cover the window from inside (no open hopper).
4. Come out only when M5 is off.

---

## 2. Launch BOM (AU empty)

| Qty | Module | State |
|---|---|---|
| 1 | M0 spine + clip | Anodised |
| 1 | M1-B blank (or M1-S empty) | Empty |
| 1 | M3 Pack T **or** M2 Pack D | Empty. Prefer T for gym-goer v1 |
| 1 | M5 C | Empty, door LOCKED |
| — | Card | Same stick. Swap the puck, the mid pack, the powder. |

Accessories later: M1-S, M1-C, M2, M3, M4+M1-L, extra M5 cells.

---

## 3. What CAD may not change

- 44 × 175
- A = 22, B = 40
- 3 o’clock button + window, 9 o’clock clip
- C = three isolated wedges, powder only
- Pack D disc band
- Pack T deadman door
- One body, not three screw-together toys

## 4. What proto must decide

- Bayonet lug angle and detent force
- B/C thread spec
- Shuttle stroke
- D vs T button force (two distinct numbers)
- T door spring vs wrap-grip
- C gasket compound and land
- Paddle wipe vs compact
- Whether AB ships a side door in v1

## 5. Proto order

1. **M0 slug** — bore, key, button hole, window, A latch dummy, C thread dummy.
2. **M3** — cup + deadman door + pin. Press, tip, release. Then same in a wet hand over a bottle.
3. **M1-B + M1-S** — latch cycle, no leak into the bore.
4. **M5-A** — three outlets + gasket + 120° door. Isolation test with flour.
5. **M5-B** — add paddle + slider + interlocks.
6. **M2** — only after T is a product. Shuttle + two wells + ring interlock. Damp discs.
7. **M4** — liner + M1-L. Optional T door clone.

Do not polish anodise before 2 and 4 work.
