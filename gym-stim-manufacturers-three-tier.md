# Gym Stim — three-tier manufacturer map
11 September 2026
Branch: feature/three-tier-line. This extends the original two-product map (Elite + Daily) without replacing it. The original file gym-stim-manufacturers.md is preserved on main.

Do not send one RFQ to everyone. Hardware, powder, chews and salts are four trades. The Lite is a second body, not a second product — same consumable spine, cheaper material, no salt chamber.

Enquiry name: Damon, Brisbane. Sample freight to Brisbane.

## Product ladder
- **GymStim Lite** — volume play. Everyday gym-goers. No salt chamber. Cheaper body (aluminium or ABS). Gravity-only chew release or empty B sold as upsell. Retail target $35–$45.
- **GymStim Mid** — the stick most people actually want. Full mechanism: A5 cap, B6 cassette + B3 one-click gate, C1 flask. Material TBD (anodised aluminium or premium plastic). Retail target $65–$85.
- **GymStim Elite** — halo product. Stainless or premium aluminium, all attachments, salt chamber included. Retail target $95–$140.
- **Consumables (shared across all three):** Flood sachets, chew cassettes, salt refills, optional screw-on shot capsule. One supply chain, three bodies.

## Order of work
1. Five CNC Elite bodies in SEQ so the object exists. Lite and Mid share the same CAD family — Lite is a stripped variant, not a separate design.
2. Flood sachet quote in QLD / NSW. Same powder for all tiers.
3. Chew tablet quote only after chew diameter is locked to the magazine. Same cassette for Lite, Mid, Elite.
4. Salt fill last, Elite only. Do not let a China salts factory design the stick.
5. Lite body tooling only after the Elite proto proves the geometry and the consumables work.

Daily (food-only, no stick) still needs no new factory. It is Flood + chew sleeves in a carton, and it remains a valid SKU alongside the three sticks.

---

## 1. Elite stick — stainless / premium aluminium body

This is a CNC object first, a mould later. Do not tool injection plastic for Elite.

### SEQ prototype (email these first)
- **JDL Innovations — Jimboomba QLD**  
  jdlinnovations.au — no MOQ, 6061 + anodise, SEQ. Ask for 5–10 bodies, three-chamber pocket stick, replaceable chew insert, A5 screw cap with twist port for salts.
- **Kilners Engineering — Morningside Brisbane**  
  kilner.com.au — (07) 3399 4273, sales@kilner.com.au  
  Proper machine shop. Better if JDL treat it as a toy.

Ask both for: 6061-T6 or 304/316 stainless, type II anodise (black or clear) or bead-blast stainless, laser mark, 5 pcs then 50 pcs price, weeks to first metal.

### China only after the SEQ stick is in a hand
Use these for 200–1,000 units if the geometry is frozen:
- Dongguan / Shenzhen CNC pill-case shops (aluminium pocket cases, MOQ often 50–500). Search term: “CNC anodized aluminum pill case OEM”.
- Separate shops make **aluminium nasal inhaler tubes** (Nanchang Eco Pack and similar). That is Chamber A language. Do not buy a stock aroma stick and pretend it is Elite.
- Xingtai Dalaran and other Hebei “smelling salts factories” sell finished ammonia bottles. They are not your stick OEM.

Chamber B insert must be a separate part so Lite and Mid can reuse it in cheaper material later.

---

## 1b. Lite stick — cheaper body, no salt chamber

Same 38 × 190 mm envelope, same Chamber B cassette and C flask interface. Cut Chamber A entirely — not just the cap, the chamber itself. That is where the per-unit saving lives.

### Material options to quote
- **6061-T6 aluminium, no anodise or clear only** — still CNC, but one finishing step fewer than Elite.
- **ABS injection mould** — cheapest per unit at volume, but needs its own tool. Only worth it above ~2,000 units.
- **Recycled aluminium billet** — middle ground, matte finish, no anodise.

### SEQ approach
Same two shops: JDL and Kilners. Ask for a Lite variant quote alongside the Elite — same CAD, stripped chamber, no salt port. Do not commission a separate Lite design; derive it from the Elite file.

### What Lite drops vs Elite
- No Chamber A, no salt cap, no ammonia pathway on the label.
- Chew gate: gravity-only release (no B3 button) OR ship with an empty B and sell the cassette as the upsell. Decide after the first 50 units sell.
- Same C1 flask, same C3 pour. That interface is non-negotiable across the line.

### Lite RFQ to send
Same body dimensions as Elite, Chamber A omitted, material options above, 5 pcs then 500 pcs and 2,000 pcs price, weeks to first units. Ask whether the Lite can share the Elite's chew-insert pocket exactly.

---

## 1c. Mid stick — full mechanism, material TBD

Sits between Lite and Elite. Full A5 cap (blank, No-Salts config), full B6 cassette + B3 one-click gate, full C1 flask. The question is material: anodised aluminium like a downgraded Elite, or a premium plastic that still feels like hardware.

### Approach
Quote Mid as a third variant from the same CAD family. If aluminium, it can share the Elite's CNC run with a different finish. If plastic, it needs its own mould — only justify that once Lite volume proves the market.

---

## 2. Flood — powder + stick pack

Stay on **formulated supplementary sports food**. Pre-workout powder in a sachet. Not capsules, not TGA-listed at launch. One formula serves Lite, Mid, Elite and Daily.

### First call (you can drive there)
- **Corevita — Brendale QLD 4500**  
  corevita.au  
  Food-grade powder blend + sachets. Practical MOQ **5,000 units**. Sports / hydration / pre-workout style powders. This is the local first quote.

### If Corevita MOQ or stick-pack spec fails
- **SachetsCo — Sydney**  
  sachetsco.com — powder sachets and stick packs, sports nutrition. Better for a true stick-pack if Corevita only does flat sachets.
- **Mansfields — Keysborough VIC**  
  mansfields.com.au — sales@mansfields.com.au — (03) 9701 8711  
  Biggest AU dry-powder CMO. Stick sachets on the line. They talk like a big brand factory. Use if you need stick-pack quality and can live with their MOQ.
- **NutraLabs** — nutralabs.com.au — sports powder + sachets, VIC. Backup.
- **Maltra Foods** — maltrafoods.com — pre-workout + sachets. Backup.

### Skip for v1
- Ultra-Nutra (AU letterhead, China plant). Fine later, messy for a first sports-food label.
- Uprotein / Noumi — they have their own brand.

**Flood RFQ to send:** ~10 g stick pack, citrulline + nitrate + sodium + flavour + 100–150 mg caffeine, warm-bottle dissolve, 5k and 10k prices, lead time, who writes the NIP. Note that the same sachet feeds three stick tiers — ask about multi-SKU packing into one carton run.

---

## 3. Chamber B chews

This is the slow one. Chewable electrolyte tablets look like food and smell like complementary medicine if you write the wrong claim. One cassette diameter serves Lite, Mid and Elite.

### AU tablet / chew CMOs
- **Lipa Pharmaceuticals** — lipa.com.au — chewables, confectionery formats, sports gels/bars. Serious plant.
- **Vitex Pharmaceuticals — Eastern Creek NSW** — tablets including chewable. Large. Startup MOQ may hurt.
- **Nutrition Care** — nutritioncare.com.au — chewable tablets, TGA/GMP site.
- **CMG — Warriewood NSW** — cmgrouponline.com.au — info@cmgrouponline.com.au — tablets + powders, start-ups on the book.
- **CMP — Minchinbury NSW** — cmpaus.com.au — listed MOQ ~1,000, pilots ~500. Capsule-heavy; ask if chewables are actually on the press.

### Faster proof
Buy **SaltStick Fastchews** wholesale for the first 50 Elite magazines. Confirm diameter (~16 mm class) before anyone cuts a die. Own-formula chew is a second factory after the stick works.

Do not have Corevita “also do the chews.” Different press, different moisture spec, different label.

---

## 4. Chamber A salts — Elite only

Harris Stability Systems already makes smelling salts in **Brisbane**. They are a competitor on the bottle, not an obvious CMO. Do not pitch them the whole Gym Stim kit. Lite and Mid carry no ammonia on the label — that is the legal wall that keeps the cheaper bodies clean.

Path:
- Elite cap is your hardware. Salt mix is a bought inhalant fill or a small AU chemical packer.
- China finished salt bottles (Dalaran etc.) are a last resort refill SKU, not the Elite body.
- Menthol-forward, warning label, not “lung pre-workout.”

Leave this quote until the cap volume in millilitres is known from the CNC proto.

---

## 5. Screw-on shot capsule (new SKU)

A small water flask that screws onto the bottom of the stick, like a shaker base. Holds a concentrated pre-workout shot — not a full drink. Strong mix, so formulation is the hard part: bitterness, grit, throat burn. Needs a formulation partner, not just a mould.

### Approach
- Hardware: same CNC or mould family as the C1 flask, smaller volume (~30–40 ml). Quote alongside the flask.
- Powder: higher concentration than Flood. Separate RFQ to Corevita or a liquid/shot CMO once the volume is locked.
- Label: “shot,” not “pre-workout drink.” Keep the sports-food pathway.

This slots in as a consumable-adjacent SKU, not a tier. It works with Lite, Mid and Elite.

---

## What to ask in every RFQ
- MOQ and the real price at that MOQ and at 2×
- Sample cost and weeks
- Who owns the formula / CAD
- Food vs therapeutic pathway they assume
- Allergen line and caffeine declaration (Flood)
- Can they pack into *your* carton
- For Lite/Mid: can the body share the Elite's chew-insert pocket and flask interface exactly?

## Do not
- Send one PDF to a salts factory, a sachet plant and a CNC shop
- Tool a China mould before an SEQ stick exists
- Ask a TGA tablet plant to also blend Flood
- Lead Daily or Lite conversations with ammonia photos
- Quote “clinically proven 1RM” on any pack
- Commission a separate Lite design — derive it from the Elite CAD
- Put salts in anything below Elite

## This week
1. JDL + Kilners — 5-body Elite proto, ask for a Lite variant quote in the same email.
2. Corevita — Flood 5k sachet / stick-pack, note multi-SKU packing.
3. Measure a Fastchew with calipers before any chew RFQ.
4. Decide Lite chew gate: gravity-only or empty-B upsell.
