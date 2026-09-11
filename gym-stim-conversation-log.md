# Gym Stim — conversation log

Captured 11 September 2026. This is a running record of design decisions made in conversation, so future sessions (and other contributors) can pick up the thread without re-deriving it.

---

## 1. The problem we're solving

Gym-goers carry tubs, scoops, and dirty shakers in their bags. Pre-workout gets forgotten in the car because it has to be taken before leaving. The stick is a convenience tool: dry storage + dosing, that pours straight into the water bottle they already bring.

**Nothing wet ever enters the stick.** All chambers hold dry powder or dry chews. This avoids clumping inside the body and sidesteps food-safety issues with a wet chamber. The clumping risk moves downstream — the powder must disperse cleanly the moment it hits water in the bottle.

---

## 2. Product line: three tiers

Evolved from the original two-product split (Elite + Daily) into a three-tier ladder. One CAD family, shared consumable spine.

| Tier | Body | Salt chamber | Target buyer |
|---|---|---|---|
| **Lite** | Cheaper (aluminium unanodised, or ABS at volume) | None — chamber cut entirely | Everyday gym-goers, not "gym bros" |
| **Mid** | Aluminium, full mechanism | None (No-Salts config) | Most people actually want this one |
| **Elite** | Stainless steel, premium feel, all attachments | Yes — A5 replaceable screw cap | Halo product; makes Mid look like a bargain |

**Lite is derived from the Elite file, not a separate design.** Same 38 × 190 mm cylinder silhouette, three tactile zones (knurl / smooth / knurl), only material and the salt chamber change. That keeps tooling to one CAD family.

**Salts stay Elite-only.** Not just the cap — the chamber itself is cut from Lite and Mid. This keeps the cheaper bodies clean on the label (no ammonia) and is the legal wall the briefs already established.

**Consumables are shared across all three bodies:**
- Chew cassette (B6) — same plastic insert, different outer body
- Flask (C1) — same pour interface
- Shot capsule — a separate SKU, not a tier; works with all three bodies

This is where the margin lives. The stick is a one-time buy; the refills are the annuity.

---

## 3. The shot capsule (new SKU)

A screw-on capsule at the base, like the things that screw onto the bottom of shakers. User unscrews it, drops in a pre-measured shot of pre-workout, screws it back. A small, strong mix — not a big drink. Solves the case where someone doesn't carry a bottle at all (gym bag, car).

**Catch:** high concentration means taste problems — bitterness, grit, throat burn. Most pre-workout shots on the market taste rough for exactly this reason. Needs a formulation partner, not just a mould.

---

## 4. Design detail — what looks best, uses least space, lasts 3–4 days

### Body
- 38 × 190 mm flashlight stack. Slimmer dies on powder volume; fat-flashlight proportions read as hardware, not a supplement pen.
- One clean cylinder, three tactile zones: knurl under salt cap, smooth mid-section over chew gate, different knurl/groove at flask.
- Same silhouette across Lite / Mid / Elite.

### Chamber A — salts (Elite only)
- A5 replaceable screw cap, 3–4 ml well, twist port.
- Cap is the consumable: user unscrews the whole thing and swaps a fresh one. Body never touches ammonia.
- Short, heavy, machined ring with a single detent click when it seats. No hinge, no turret.
- Warning mark recessed on the cap face so it doesn't wear off.

### Chamber B — chews
- B6 cassette, 10 tabs, dime-class (~18 mm Ø, 5.5 mm thick, ~55 mm stack).
- Slides in from the side or bottom, locks with a quarter-turn.
- **Gate: B3 one-click** for Elite and Mid — one button, one chew, satisfying click. Lite drops the button: gravity-only, or ships the cassette empty as an upsell.
- No rotary carousel or slider — more parts, more jams, less premium feel.

### Chamber C — flask
- 70 ml, screw-off, C3 taper pour. Desiccant puck in the lid.
- At ~0.5 g/ml density, 70 ml ≈ 35 g ≈ 3.5 serves at a 10 g scoop. Fluffy powders (C4) → closer to 4; dense (Pre-Jym) → closer to 2.5.
- **Print fill lines at 20, 45, 70 ml.** Let the user read their own scoop size off the flask. Don't promise "3 days" on the box — promise the volume, let density do the talking. Anyone on a 25 g scoop knows they're topping up more often; that's fine.
- Taper pour: wide mouth for filling from a tub scoop, narrow neck to tip clean into a standard bottle without a funnel.
- **Refinement under consideration:** flip-top lid instead of full screw-off — one thumb flick, pour, flick shut. Faster for repeat doses mid-session, keeps desiccant sealed. Trade-off: slightly weaker humidity seal, so the desiccant puck matters more.

### Lite specifics
- Cut Chamber A entirely (not just the cap) → frees ~22 mm.
- Either shorten to ~168 mm, **or push the flask to ~90 ml for a genuine four-day carry.** Lean: push the flask — more powder is the whole point of Lite.
- Same chew cassette, same pour interface, cheaper body.

---

## 5. What goes in the chambers (mix and match)

One job per chamber, no overlap:

- **Flask:** the user's own pre-workout, or your Flood sachet if they have no tub. Caffeine lives here.
- **Chew:** caffeine-free electrolyte (SaltStick-style — sodium, potassium, magnesium). One chew mid-session. This is the upsell that doesn't compete with the flask.
- **Salt:** menthol-forward, ammonia, Elite only. Snap before a heavy set.

A gym-goer can run the stick three ways: full Elite with all three, No-Salts (flask + chew), or flask-only as a pure powder carrier. Chew and salt are optional — the stick works empty. That's what keeps the launch box legal and useful on day one.

---

## 6. Dispensing mechanisms (convenience rules)

**Chews — button press.** Spring-loaded one-click gate: one press, one chew drops into the palm. Refill: quarter-turn cassette slides out the bottom, swap in a fresh ten-pack. No fiddling with individual tabs.

**Powder — manual pour, not a button.** Flask unscrews from the base, scoop straight from the tub into it, screw back on. Two actions, no tools. Dispensing = unscrew the cap, pour through the taper neck into the bottle. A powder button is avoided because powders jam and clump under pressure — the button is reserved for chews, where it actually feels good.

**Max two actions to dose anything.** No billion different things to take off. One clean cylinder.

---

## 7. Honest business read

- **Problem is real.** The clutter and the "forgot to take it" failure are genuine.
- **Hardware is buildable.** Four separate trades, never one RFQ: CNC body, sachet plant, tablet press, salts last.
- **Manufacturing cost (1,000 units, landed AU):** Lite ~$12–18, Elite ~$25–36.
- **Sell:** Lite $45–65, Elite $95–140. Margins look fat on paper (70%+), but that's before marketing, returns, and zero brand awareness.
- **Market:** AU pre-workout spend ~$220M/yr, ~4.5–5M gym members. 1 in 1,000 buying once = 4–5k units. A real niche, not a unicorn.
- **The stick is a one-time buy.** Real money is the refills. Edge = convenience + "no mixing poisons" story, but that only converts if the hardware feels worth carrying. Most gym-goers will shrug and keep their tub.
- **Lean:** build the prototype, test on actual gym bros, commit to a production run only if they reach for it. Don't quit the day job on the first thousand units.
- **Biggest risk:** 70 ml is tight for four days on a 25 g scoop (only ~2 serves). Fix is honest labelling + fill lines, not a bigger flask.

---

## 8. Repo state at time of writing

- `main` — untouched, original two-product docs preserved.
- `feature/three-tier-line` — `gym-stim-manufacturers-three-tier.md` (Lite / Mid / Elite + shot capsule).
- `feature/cad-mechanisms` — six parametric OpenSCAD files in `cad/` (body, chew gate, flask, salt cap, shot capsule, assembly). Open in OpenSCAD or paste into modelrift.com; flip the `tier` variable.
- `feature/schematics` — `cad/gymstim-three-tier-schematic.svg`, dark-background line drawing of all three tiers side by side with chamber zones labelled.
- `feature/conversation-log` (this file) — the decisions above.

No 3D render images exist yet — only `.scad` text and the SVG schematic. Renders need a CAD tool run locally or in-browser.

---

## 9. Open questions / next steps

1. Flip-top vs full screw-off on the flask — decide after a prototype test of seal vs speed.
2. Lite chew gate: gravity-only buttonless, or empty-cassette upsell?
3. Shot capsule formulation partner — who handles the strong-mix taste problem?
4. Actual CAD renders (not just OpenSCAD source) for the repo.
5. Prototype: 5 CNC Elite bodies in SEQ (JDL Innovations Jimboomba, or Kilners Morningside) before any China tooling.
