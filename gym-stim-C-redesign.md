# Gym Stim Elite — Chamber C Redesign
## Three-Chamber Powder Module — Preferred Mechanism

**Status:** Preferred C architecture — replace the current ear-dump concept during next CAD iteration.
**Date:** 12 September 2026
**Product:** Gym Stim Elite V2
**Overall envelope:** 44 mm OD × 175 mm long

---

# 1. Core Requirement

C contains **three permanently isolated powder chambers**.

The user fills all three chambers and leaves them loaded. They must remain sealed from one another and from the outside whenever dispensing is not intentionally occurring.

The three chambers are fixed 120° wedges. They do not rotate.

The preferred mechanism separates the three user functions:

> **SELECT → UNLOCK DOOR → INVERT → PULL SCRAPER**

Do not revert to the previous ear/cam mechanism unless this architecture proves mechanically impossible.

---

# 2. User Operation

## Step 1 — Select chamber

Rotate the main C selector/collar to choose chamber **1 / 2 / 3**.

The selector establishes which wedge will dispense.

The bottom door remains in its **LOCKED** position during selection.

## Step 2 — Unlock the door

Twist the **separate bottom door assembly** from:

- **LOCKED**
- **UNLOCKED / DISPENSE**

The door panel has a single large **120° sector opening**.

The door/seal assembly moves together.

In UNLOCKED, the 120° opening aligns with the **already-selected chamber**.

The other two chambers remain sealed.

## Step 3 — Invert

Turn the product upside down over the user's bottle/container.

The selected chamber now has a large gravity outlet.

Gravity should perform the majority of the dispensing.

## Step 4 — Pull the slider

Pull the external linear slider downward.

The slider drives a **120° sector-shaped paddle scraper** down the selected chamber.

The paddle breaks up caked/bridged powder and pushes remaining powder toward the open outlet.

## Step 5 — Reset

Return the slider to HOME.

Twist the bottom door back to LOCKED.

All three chambers are sealed again.

---

# 3. Critical Isolation Requirement

This is a HARD requirement.

At rest:

```text
CHAMBER 1 = SEALED
CHAMBER 2 = SEALED
CHAMBER 3 = SEALED
```

When chamber 1 is dispensing:

```text
CHAMBER 1 = OPEN
CHAMBER 2 = SEALED
CHAMBER 3 = SEALED
```

When chamber 2 is dispensing:

```text
CHAMBER 1 = SEALED
CHAMBER 2 = OPEN
CHAMBER 3 = SEALED
```

When chamber 3 is dispensing:

```text
CHAMBER 1 = SEALED
CHAMBER 2 = SEALED
CHAMBER 3 = OPEN
```

The design must prevent powder migration between chambers.

The sealing interface must be designed specifically to prevent cross-contamination during repeated chamber selection and door rotation.

---

# 4. Bottom Door Architecture

Retain the large bottom door concept, but simplify it.

The door is a **rotary shutter/panel** with one approximately **120° open sector**.

Conceptually:

```text
             BOTTOM VIEW

          .-------------.
       .-'               '-.
      /                     \
     |       120° OPEN       |
     |        SECTOR         |
      \                     /
       '-._______________ .-'
```

The door has two defined positions:

### LOCKED

The solid portion of the door covers/seals the chamber outlets.

All three chambers are closed.

### UNLOCKED / DISPENSE

The 120° opening aligns with the selected chamber.

Only that chamber has an open gravity path.

The other two chamber outlets remain sealed.

The door should preferably have strong tactile detents at LOCKED and UNLOCKED.

---

# 5. Seal

Use a simple compliant sealing element between the chamber outlet plane and the rotating door panel.

A thin elastomeric gasket/seal is the preferred starting concept.

The seal exists to:

- prevent powder leakage
- prevent cross-contamination
- compensate for manufacturing tolerance
- maintain separation between adjacent chambers
- permit controlled rotary movement

Do not assume generic rubber is suitable for final food-contact use. Final material selection must consider applicable food-contact requirements, wear, compression set, powder behaviour and cleaning.

---

# 6. Seal Geometry — Highest Priority Engineering Problem

The critical engineering task is the interface between:

**three chamber outlets → sealing element → rotating 120° door**

The design must allow the door to rotate while maintaining isolation between the three chambers.

Investigate:

- individual sealing lands around each chamber outlet
- gasket compression
- radial barriers between chambers
- circumferential leakage paths
- powder accumulation at the interface
- seal deformation during rotation
- tolerance stack-up
- wear over repeated cycles
- cleaning/washing
- compression set

The seal should not merely cover the holes. It must prevent a powder path from one chamber to another.

Prototype this interface early.

---

# 7. Paddle Scraper

The scraper is a **120° sector-shaped paddle** corresponding to one selected chamber.

It travels linearly/axially down the selected wedge.

The scraper does NOT need to rotate during dispensing.

The selector establishes the selected wedge before dispensing.

### Scraper goals

- break powder bridges
- disturb caked powder
- clear chamber walls
- push residual powder toward the outlet
- minimise remaining powder
- avoid excessive friction
- avoid compacting powder

The paddle should reach close enough to the chamber floor to clear useful residual material.

A slightly compliant wiping edge may be investigated if necessary, but do not make the scraper excessively tight. High interference will increase slider force and can compact powder.

---

# 8. Slider

The external slider is a simple linear actuator for the paddle.

The preferred user interaction is:

> **Press/engage → pull slider downward → paddle travels down chamber**

The slider should have:

- clear HOME position
- positive retention
- comfortable thumb/finger contact
- shallow recessed track
- no snagging when carried in a pocket
- mechanical travel limit at EMPTY

The slider should be mechanically unavailable while the door is LOCKED.

---

# 9. Selector / Door / Slider Interlocks

Use simple mechanical interlocks where practical.

### Door LOCKED

- slider cannot travel
- no chamber outlet is exposed
- all three chambers sealed
- selector can rotate to choose a chamber

### Door UNLOCKED

- selected chamber outlet is exposed
- slider becomes available
- selector should preferably be locked against changing chamber

### Slider NOT HOME

Preferably:

- door cannot return to LOCKED
- selector cannot change chamber

This prevents the user from sealing the paddle inside the chamber or changing the selected chamber while the paddle is down.

Do this mechanically; no electronics/sensors.

---

# 10. Selector Architecture

The main C selector chooses one of three fixed wedge chambers.

The wedges themselves remain stationary.

Use hard detents for:

- 1
- 2
- 3

A fixed body indicator/pip should identify the selected chamber.

The bottom door is a **separate user action** from chamber selection.

Do not combine selection and door unlocking into one action unless there is a compelling manufacturing reason and the resulting interaction remains unambiguous.

---

# 11. Mechanical Stack

Preferred conceptual stack from top to bottom:

```text
┌─────────────────────────────┐
│        C FILL TOP           │
├─────────────────────────────┤
│                             │
│       THREE 120° WEDGES     │
│                             │
│      \     |     /          │
│       \    |    /           │
│        \   |   /            │
│         \  |  /             │
│          \ | /              │
│                             │
│       120° PADDLE           │
│            ↓                │
├─────────────────────────────┤
│     THREE CHAMBER OUTLETS   │
├─────────────────────────────┤
│       SEAL / GASKET         │
├─────────────────────────────┤
│       ROTARY DOOR           │
│       120° OPEN SLOT        │
├─────────────────────────────┤
│        DISPENSE EXIT        │
└─────────────────────────────┘
```

The actual CAD should optimise this stack for assembly and sealing rather than blindly following the diagram.

---

# 12. Part-Count Philosophy

The reason for this redesign is to make C simpler and cheaper than the previous integrated ear-dump concept.

Target architecture:

- 3 fixed powder chambers / cartridge body
- 1 selector mechanism
- 1 rotary bottom door
- 1 sealing element
- 1 paddle scraper
- 1 external slider
- simple detents/interlocks

Avoid:

- three independently actuated valves
- three independent scraper systems
- miniature precision valves
- complex cam trains
- springs where unnecessary
- electronics
- motors
- pumps
- small metering orifices

The rotary door should be a simple moulded/machined component.

The paddle should be a simple moulded component.

The seal should be a simple replaceable/compliant component if practical.

---

# 13. Manufacturing Direction

Prefer a removable powder-contact C cartridge inside the aluminium exterior where practical.

Candidate manufacturing approach:

- C cartridge: injection-moulded polymer for production, printed/machined for prototypes
- paddle: moulded polymer
- rotary door: moulded polymer or simple machined prototype component
- seal: elastomer
- exterior shell: 6061-T6 aluminium

Final material choices require engineering and applicable food-contact validation.

Keep the powder-contact geometry smooth and cleanable.

Avoid inaccessible pockets where powder can accumulate.

Keep the coarse C carrier thread outside the powder path.

---

# 14. Current Envelope

Do not change the locked V2 body without explicit approval.

- OD: **44 mm**
- Length: **175 mm**
- Wall: **2.0 mm**
- Approximate internal diameter: **40 mm**
- C usable column: approximately **85–95 mm**, subject to final B/C interface and mechanism packaging
- Three chambers: **120° each**
- Target cell volume: approximately **32 ml each**

The 44 × 175 V2 envelope supersedes the old 38 × 190 V1 body.

Do not tool the old V1 C.

---

# 15. C Filling

The C carrier is removable from the B/C interface using the existing coarse-thread concept.

Three wedges are filled from the **top** while the carrier is removed.

The user fills the chambers from their powder container/tub.

The dump end is NOT used as the filling opening.

A desiccant arrangement may remain in the lid if compatible with the final sealing/cleaning architecture.

---

# 16. Intended Capacity

Target approximately **32 ml per chamber**.

Three cells represent three pre-loaded sessions rather than precision metered doses.

The system is intentionally gravity-based.

Do not turn C into a volumetric dosing mechanism.

---

# 17. Operating State Machine

## HOME / LOCKED

```text
Door = LOCKED
Scraper = HOME
All chambers = SEALED
Selector = available
Slider = locked
```

## SELECTED

```text
Door = LOCKED
Scraper = HOME
Selected chamber = 1 / 2 / 3
All chambers = SEALED
```

## DISPENSE ENABLED

```text
Door = UNLOCKED
Scraper = HOME
Selected chamber = OPEN
Other chambers = SEALED
Slider = available
```

## SCRAPING

```text
Door = UNLOCKED
Scraper = travelling downward
Selected chamber = OPEN
Other chambers = SEALED
Selector = locked
```

## RESET

```text
Scraper = HOME
Door = LOCKED
All chambers = SEALED
Selector = available
```

---

# 18. Failure Modes to Design Against

The first engineering review should specifically investigate:

1. powder leaking from an unused chamber
2. powder migrating between chambers at the rotary seal
3. powder accumulating at the seal interface
4. door becoming difficult to rotate after powder exposure
5. scraper binding against chamber walls
6. scraper compacting powder instead of clearing it
7. scraper being pulled while door is locked
8. selector being changed while scraper is down
9. door being closed while scraper is down
10. seal wear after repeated cycles
11. gasket compression set during long-term storage
12. cleaning water/powder getting trapped in inaccessible areas
13. door accidentally stopping between defined positions
14. slider snagging in a pocket
15. excessive slider force at the bottom of the chamber

---

# 19. Prototype Strategy

Do not start by polishing the external aesthetics.

First prototype the **C bottom interface** at full scale.

Prototype in this order:

### Prototype A — Seal test

Three wedge outlets + seal + rotary 120° door.

Prove that one chamber can be exposed while the other two remain isolated.

### Prototype B — Door endurance

Repeatedly rotate LOCKED → UNLOCKED → LOCKED with powder simulant present.

Check seal wear and powder migration.

### Prototype C — Paddle

Add the 120° paddle and slider.

Measure required force and residual powder.

### Prototype D — Full C cartridge

Combine selector, door, seal, paddle, slider and interlocks.

Test realistic loading, storage, dispensing and cleaning cycles.

Use safe inert powder simulants during early mechanical testing rather than active formulations.

---

# 20. Design Intent

The final user experience should be:

> **Twist to select.**
>
> **Twist the door to unlock.**
>
> **Invert.**
>
> **Pull the slider.**
>
> **Return slider.**
>
> **Lock the door.**

The mechanism should feel mechanical, deliberate and premium while remaining inexpensive enough to manufacture at scale.

The central principle is:

> **Three chambers stay isolated. The rotary door provides one large gravity outlet. The 120° paddle scraper only assists the selected chamber.**

---

# 21. Explicitly Supersedes Previous C Concept

This redesign supersedes the previous V2 C concept of:

- external ear as the combined door/scraper actuator
- first 3 mm cam stroke opening the door
- remaining ear stroke driving the scraper
- hold-to-dump ear

The new preferred architecture is:

> **Main selector → separate rotary door with 120° opening → gravity → independent linear paddle scraper.**

Do not retain the old ear as the primary user control.
