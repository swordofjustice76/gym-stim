# Gym Stim Elite — Chamber B Redesign
## Isolated Dual-Well Shuttle — Preferred Mechanism

**Status:** Preferred B architecture — replace the current V2 priority-throat clicker during next CAD iteration.
**Date:** 12 September 2026
**Product:** Gym Stim Elite V2
**Overall envelope:** 44 mm OD × 175 mm long
**B column:** 40 mm (locked V2 stack)

---

# 1. Core Requirement

B carries **eight Fastchew-class discs** in a removable food-contact cassette.

Discs are **18.0 × 5.5 mm**. Official sleeves share one die. Launch cassette is **empty**.

The cassette contains **two isolated wells of four discs**. The wells do not share a throat. They do not race each other. They do not merge.

The preferred mechanism separates the two user functions:

> **ARM A WELL → CLICK ONE DISC**

Do not revert to the V2 priority throat, an open Y, or a per-click 180° rotor unless this architecture proves mechanically impossible inside the 40 mm B column.

One-hand mid-set use stays:

> **CLICK → disc in the palm → CLICK**

Arming a well is a separate, infrequent action (once per four discs), not part of every click.

---

# 2. Why V2 B Is Being Replaced

V2 locked:

- twin wells, 4 + 4
- cassette does **not** rotate
- one 18.4 mm **priority throat**
- ledge so the second well cannot enter until the neck is empty
- 8 mm button at 3 o’clock
- oval window under the button
- followers + springs to a shared ceiling

That is the correct *count* and the correct *height*. The feed path is the problem.

A priority throat is an open Y with a story. Two springs still point at one hole. The first time both followers move, a disc swells, or crumbs sit on the ledge, both wells lock and the stick becomes a sealed tin of damp electrolytes.

C had the same class of mistake: one ear tried to open a door and scrape a cell. B’s button is trying to merge two columns and eject one disc.

Same fix as C:

> **Do not ask one control to do two geometries.**

---

# 3. User Operation

## Step 1 — Arm a well

Twist the **B well ring** to **I** or **II**.

Hard detents. A fixed body pip points at the armed well.

The armed well is physically parked under the shuttle / window at 3 o’clock.

The parked well sits 180° away, under a solid ceiling. It has **no path** to the window.

The shuttle stays at HOME while the ring turns.

## Step 2 — Click

Press the 8 mm button at 3 o’clock.

The button drives a **linear shuttle** with a single disc pocket.

Stroke:

1. HOME: pocket sits over the armed well. Top disc is already on the shuttle ceiling, held by that well’s follower.
2. PRESS: pocket captures exactly one disc and translates it to the oval window.
3. Window presents the disc into the palm. Disc leaves the pocket.
4. RELEASE: shuttle returns HOME empty. Next disc in the armed well rises to the ceiling.

One press. One disc. No second well involved.

## Step 3 — Well empty

After four clicks the armed well is dead.

Next press is a **blocked / short click**. Nothing leaves. That is the signal to twist the ring to **II**.

Do not auto-index on the fourth click. Auto-index is the killed per-click rotor wearing a new hat.

## Step 4 — Reload

Unscrew C at the B/C coarse thread.

Pull the cassette out the bottom of B.

Swap a loaded sleeve, or thumb four + four into the empty wells.

Slide cassette home. Screw C back.

Launch cassette ships empty.

---

# 4. Critical Isolation Requirement

This is a HARD requirement.

At rest, ring on I:

```text
WELL I   = ARMED, sealed except the shuttle pocket at HOME
WELL II  = PARKED, solid ceiling, no path to the window
WINDOW   = empty
SHUTTLE  = HOME
```

During a click on I:

```text
WELL I   = feeding the shuttle only
WELL II  = still parked, still sealed
WINDOW   = one disc, then empty
```

After the ring is moved to II:

```text
WELL II  = ARMED
WELL I   = PARKED under the solid ceiling
```

A disc from I must never be able to enter II, the septum, or the window while II is armed.

Crumbs from I must not migrate into II.

The parked well is not “waiting its turn at a fork.” It is capped.

---

# 5. Why the Cassette Indexes, and Only Once Per Four

Sizing already killed an 8-pocket revolver inside 44 mm. An 18 mm disc ring of eight is a hockey puck.

Two 18 mm wells plus a septum **do** fit a 40 mm ID:

```text
18 + ~3 septum + 18  =  39 mm   across the inner diameter
```

If both wells stay fixed and both try to feed one window, you are back at a Y.

If the cassette indexes **every click**, you are back at the killed 180° rotor: gate-open-while-turning jam, 90° half-step lock, eight discs swinging every press.

If the cassette indexes **only when the user turns the ring**, the shuttle always serves one geometry:

```text
          9 o'clock clip

     parked well
         ○
         |          40 mm ID
         | septum
         ○
     armed well  →  shuttle  →  window + button
                                3 o'clock
```

The live well is always the 3 o’clock well. The shuttle never reaches across the septum.

That is the whole invention. Everything else is springs and detents.

---

# 6. Shuttle

The shuttle is a flat plate in a track under the 3 o’clock cheek.

Pocket: **18.4 × 5.8 mm**, radiused, ~0.4 mm radial clearance on a dry 18.0 mm disc.

Travel: pocket centre moves from well axis to window axis. Estimate **10–14 mm**. Measure in CAD. Do not guess a long stroke to make the button feel “premium.” Long stroke + damp powder = bind.

### Shuttle rules

- Thickness ≈ 5.8–6.2 mm so a 5.5 mm disc cannot stack two-high in the pocket.
- Lead-in chamfer on the well side so the rising disc seats without shearing an edge.
- Closed roof over the pocket during travel so the disc cannot climb out into the track.
- Open cheek only at the window.
- Return spring brings the plate HOME on release.
- Hard stop at HOME and at PRESENT.
- Button is the only external B control besides the well ring.

### What the shuttle is not

- Not a blade that slices a disc.
- Not a PEZ pusher that compresses the stack.
- Not a gravity trapdoor. Gym-door use is any orientation. Gravity is a bonus, not the feed.

The follower does the lifting. The shuttle only carries the disc that is already at the ceiling.

---

# 7. Followers and Springs

Each well has its own follower and spring.

Both stacks are held to **their own ceiling**.

- Armed ceiling = underside of the shuttle at HOME.
- Parked ceiling = solid cassette roof.

After four clicks, well I is empty and its follower is against the shuttle. That is what makes the fifth click feel dead. Design the follower face so it cannot enter the pocket.

Spring rate: enough to lift four 18 × 5.5 mm discs plus follower after a humid session, not enough to fire a disc through a half-open shuttle. **Requires prototype testing.** Do not copy a pen-spring from a catalogue and call it done.

Food-contact polymer followers. Stainless spring if it can be isolated from the chew face, or a polymer-safe coated spring. Do not leave a raw carbon spring in the well.

---

# 8. Window and Button

Keep the V2 outside map.

- **9 o’clock:** clip
- **3 o’clock:** 8 mm button
- **Under the button:** oval window **18.5 × 7 mm**

Window tall enough for 5.5 mm + finger pad, not tall enough for two discs.

The disc should present proud of the window by ~2–3 mm so a sweaty hand can take it without fishing.

No open hopper. No gumball mouth. If the stick is inverted in a bag with the button mashed, the shuttle may travel, but the parked well stays capped and a second disc cannot follow until the shuttle returns HOME. That is the anti-dump rule.

---

# 9. Well Ring / Selector

Two positions only: **I** and **II**.

- Hard detents at both
- No mid-detent
- Ring will not leave a detent unless the shuttle is HOME
- Shuttle will not move unless the ring is fully in a detent

The ring rotates the cassette (or a cage around the two wells) 180° so the chosen well lands on the shuttle axis.

Do not rotate the aluminium body. Do not rotate C. Do not rotate A.

A thin knurled band at the A/B or B waist is acceptable if it cannot be confused with the C selector. Mark it `B` or use a different knurl pitch from C.

If two collars on one stick feel like a cockpit, put B’s ring as two discrete dimple stops on the cassette itself, accessed only when C is off. That kills mid-set well changes. Prefer the external ring so a user can arm well II between sets without unscrewing C.

---

# 10. Interlocks

Mechanical. No sensors.

### Shuttle HOME, ring in detent

- Button available
- Ring can be turned to the other well

### Shuttle NOT HOME

- Ring locked
- Parked well stays parked
- Window may be presenting a disc

### Ring between detents

- Button locked
- Neither well aligned with the pocket
- Nothing should be able to fall into the track

### C unscrewed

- Cassette can be withdrawn toward the dump end
- Button still should not free-fire the armed well into the room. A light cassette detent in B is enough.

### A removed

- Does nothing to B

B click does not vent A or C. C ear / door / slider does not fire B.

---

# 11. Mechanical Stack

Preferred conceptual stack inside the 40 mm B column, top (A side) to bottom (C side):

```text
┌─────────────────────────────┐
│     A/B DIVIDER  1.2 mm     │
├─────────────────────────────┤
│     SHUTTLE TRACK ~6.2      │
│     button / window cheek   │
├─────────────────────────────┤
│                             │
│   WELL I          WELL II   │
│   4 discs         4 discs   │
│   22 mm stack     22 mm     │
│                             │
│   follower        follower  │
│   spring          spring    │
│                             │
├─────────────────────────────┤
│     CASSETTE FLOOR          │
├─────────────────────────────┤
│     B/C DIVIDER + THREAD    │
└─────────────────────────────┘
```

Height check (estimate — CAD must close this):

| Slice | mm |
|---|---|
| Shuttle plate + track | 6.2 |
| Four discs | 22.0 |
| Follower | 3.0 |
| Spring live length (compressed) | 7.0 |
| Floor / lips | 1.8 |
| **Total** | **40.0** |

This is tight. The spring lives **under** the four-disc stack, not above it. Do not add a second gate plate on top of the shuttle. If the stack does not close, steal 2 mm from C’s 95 mm column before stealing from A. Do not grow the 175 mm body to save a chew spring.

---

# 12. Cassette

Removable. Food-contact polymer for production. Printed or machined for proto.

The aluminium tube never touches a disc.

### Cassette features

- Two Ø18.2 mm wells, 180° apart, 4-disc hard stop
- Septum wall, not a hollow fork
- Parked-well roof is a solid land
- Armed-well roof is the shuttle pocket at HOME
- Key so it can only insert one way
- Thumb notch at the C end for extraction
- Smooth well walls. No internal threads in the powder/chew path
- Optional dry desiccant pit in the septum if it does not steal well diameter

Official sleeves are the same cassette, one formula each:

- electrolyte
- glucose
- mint
- magnesium
- blank BYO

One formula per cassette. Dual-flavour in one body is killed.

Caffeine sleeve only if the disc is still 18 × 5.5 **and** ARTG listed. Not V2 launch.

---

# 13. Part-Count Philosophy

Target architecture:

- 1 cassette body
- 2 followers
- 2 springs
- 1 shuttle plate
- 1 shuttle return spring
- 1 button
- 1 well ring / cage
- detents + one cassette key

Avoid:

- open Y
- priority ledge
- per-click ratchet
- 180° swing of eight discs every press
- two shuttles
- three wells
- gravity-only feed
- electronics
- a door on B as well as a shuttle
- storing discs loose in the aluminium bore

The cassette is the cheap wear item. The tube is the expensive one.

---

# 14. Manufacturing Direction

| Part | Proto | Production |
|---|---|---|
| Elite tube | SEQ CNC 6061-T6 | China CNC + type II anodise |
| B cassette | MJF / resin print, then machine | Injection mould, food-contact polymer |
| Shuttle | Print, then machine acetal | Moulded acetal or similar |
| Followers | Print | Moulded |
| Springs | Catalogue stainless, then spec | Same, food-isolated |
| Button + ring | Machine 6061 or print | Machine or moulded insert in the tube |
| Window cheek | Cut in the tube or a pressed bush | Same |

Chamber B insert stays a separate part so Daily can reuse the cassette in a plastic shell later. Do not bury B geometry in the aluminium so a chain SKU needs a new mould.

Chew diameter stays locked at **18 × 5.5 mm** before any tablet RFQ. Measure a Fastchew with calipers. Do not tool a die off a product photo.

---

# 15. Current Envelope

Do not change the locked V2 body without explicit approval.

- OD: **44 mm**
- Length: **175 mm**
- Wall: **2.0 mm**
- ID: **40 mm**
- A: **22 mm** bayonet puck
- B: **40 mm**
- C: remainder, three ~32 ml wedges per the C redesign
- Clip: 9 o’clock
- B button / window: 3 o’clock

44 × 175 supersedes 38 × 190.

Single-column 8-disc B is **62 mm**. It does not fit this column. Do not put 8 discs in one well and steal C’s session volume to make a flashlight magazine.

---

# 16. Operating State Machine

## HOME / ARMED I

```text
Ring = I
Shuttle = HOME
Well I = at window axis, four-or-fewer discs on the ceiling
Well II = parked, capped
Button = available
```

## PRESENTING

```text
Ring = I (locked)
Shuttle = toward window
One disc in the pocket
Well II = still parked
```

## TAKEN

```text
Disc has left the pocket
Shuttle returning HOME
Well I follower raises the next disc
```

## WELL I EMPTY

```text
Follower against shuttle
Button = short / blocked click
User twists ring to II
```

## ARMED II

```text
Ring = II
Well II = at window axis
Well I = parked empty or partial, capped
```

## RELOAD

```text
C unscrewed
Cassette out
Wells filled or sleeve swapped
Cassette in
C on
```

---

# 17. Failure Modes to Design Against

First engineering review should specifically investigate:

1. Two discs in the shuttle pocket
2. Disc standing on edge in the pocket
3. Swollen / damp disc jammed in the well
4. Follower entering the pocket on an empty well
5. Shuttle moving while the ring is between I and II
6. Ring turning while a disc is in the pocket
7. Crumb pack in the shuttle track
8. Crumb migration from I to II
9. Spring corrosion or spring-taste on a chew
10. Accidental bag-press emptying well I
11. Window too tight for a wet finger
12. Window too open for a dump
13. Cassette inserted 180° out and the key failing
14. Cassette rattling and walking the ring off detent
15. Button force high enough to fire C’s slider or the user’s grip off the bottle
16. Hygroscopic discs welding into a 22 mm slug
17. Cleaning water trapped under the shuttle
18. Shuttle bind after anodise thickness on the cheek
19. Daily plastic shell changing the centre distance so official sleeves do not fit both bodies

Items 1, 5, 6, 16 are prototype-gate failures. If any of those survive a damp-disc test, the mechanism is not done.

---

# 18. Hygiene and Law

B is a food-contact magazine, not a medicine dispenser.

- Launch cassette empty
- Own 2.9.4 label lives on the **sleeve carton**, not on the stick
- Stick claims stay dumb: chew magazine, clicker, compatible with 18 × 5.5 mm discs
- No 1RM language
- No caffeine in the chew at V2 launch
- User may run B empty. The stick still works.

Wipe card in the box. Cassette should survive a warm soapy wash and a full dry before reload. If the shuttle track cannot be washed, the shuttle must come out with the cassette.

Do not store discs in the aluminium bore “for now.”

---

# 19. Prototype Strategy

Do not start by polishing the 3 o’clock cheek.

First prototype the **feed interface** at full scale.

### Prototype A — Single well + shuttle

One 18.2 mm well, four dummy discs, follower, shuttle, window.

Prove: one press, one disc, any orientation, dry discs.

### Prototype B — Damp / swollen discs

Same rig. Condition discs (or 18 × 5.5 mm 3D-printed slugs with a 0.2–0.4 mm swell).

Measure button force and jam rate over 50 cycles.

### Prototype C — Two wells + ring

Add the second well and the 180° index.

Prove parked well stays capped while armed well empties.

Prove ring will not move mid-stroke.

### Prototype D — Full B in the 44 × 40 mm envelope

Cassette extract through the B/C thread. Button, clip, window, anodised cheek.

Drop test in a gym bag. Pocket clip carry. Sweat. Chalk dust from a later A puck.

Use inert discs. Do not prototype with a branded electrolyte you have not bought the rights to crush.

---

# 20. Design Intent

The final user experience should be:

> **Twist B to I or II.**
>
> **Click.**
>
> **Chew.**
>
> **When the click dies, twist the other well.**
>
> **When both are dead, unscrew C and swap the cassette.**

The mechanism should feel like a flashlight switch, not a pillbox.

The central principle is:

> **Two wells stay isolated. Only the armed well sees the shuttle. The shuttle carries one disc. The ring changes wells. The button does not merge anything.**

---

# 21. Explicitly Supersedes Previous B Concept

This redesign supersedes the V2 B concept of:

- fixed twin wells feeding one 18.4 mm priority throat
- ledge-as-Y
- both springs live on the same ceiling hole
- one button responsible for merge + gate + eject
- per-click 180° rotor as the alternative

The new preferred architecture is:

> **2-position well ring → one armed well at 3 o’clock → linear single-disc shuttle → oval window.**

Keep from V2:

- 8 discs, 4 + 4
- 18 × 5.5 mm
- 40 mm B column
- 3 o’clock button, window under it
- 9 o’clock clip
- followers to a ceiling
- cassette out the bottom after C unscrews
- empty launch
- sleeve SKUs
- independence from A and C

Do not keep the throat.

---

# 22. Relation to Chamber C

C redesign (selector → rotary 120° door → gravity → independent paddle) and this B redesign are the same rule applied to two chambers:

| | C | B |
|---|---|---|
| Isolated stores | 3 wedges | 2 wells |
| Select | collar 1/2/3 | ring I/II |
| Open path | 120° door | shuttle pocket |
| Assist | paddle | follower |
| Do not combine | ear = door + scraper | button = Y + gate |

B must not steal C’s thread, C’s slider track, or C’s 32 ml cells.

If a later CAD clash appears at the B/C waist, move B’s ring up toward A, not down into C.
