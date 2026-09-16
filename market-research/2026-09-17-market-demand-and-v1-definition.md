# Gym Stim — Market Research & V1 Definition

**Date:** 17 September 2026
**Status:** Working market-research direction

## Current product concept

Gym Stim is a premium compact gym carry system, currently targeting an approximately **50 × 175 mm cylinder**. The business is **hardware-first**; supplements/refills are not part of the initial product and may be explored later.

The research direction in this discussion shifted the product away from adding mechanisms simply because they are possible, and toward consolidating small consumables that serious gym users already carry separately.

## Market-demand signals

### 1. Portable supplement powder storage — strongest signal

Organic gym/fitness discussions repeatedly show people trying to avoid carrying full supplement tubs. Existing improvised and commercial solutions include:

- Ziplock bags
- Mini food/Tupperware containers
- Baby-formula storage containers
- Keychain powder funnels
- Stackable BlenderBottle-style containers
- Powder storage integrated into shaker bottles
- Dedicated portable supplement pods

Users commonly carry more than one powder, including combinations such as pre-workout, creatine, electrolytes/hydration products, carbohydrate powders, pump products and other intra-workout powders.

This validates the underlying problem but also establishes a very cheap competitor: a user can simply use several small plastic containers. Gym Stim therefore needs to offer meaningfully better convenience and dispensing rather than merely premium storage.

### 2. Three powder chambers appear commercially sensible

Three chambers map well to actual supplement routines while remaining flexible. Example user configurations include:

- General gym: PRE / CREATINE / ELECTROLYTES
- Bodybuilding: PRE / PUMP / CARBS
- Functional/HYROX training: PRE / ELECTROLYTES / CARBS

The physical chambers should therefore use neutral identifiers such as **1 / 2 / 3** rather than permanently naming the supplement type.

The differentiator should be that the chambers are integrated into one radial core and can be selected and dispensed directly, rather than being three separate screw-top tubs.

### 3. Chalk containment — strong signal

Weightlifting, climbing and strength-training discussions show repeated complaints about transporting chalk without making a mess. Users currently use Ziplocks, food containers, chalk bags and even empty supplement tubs. Dedicated chalk-storage products also explicitly market spill/mess reduction.

This makes a **sealed dry-chalk module** a strong launch candidate because it solves a real adjacent problem for the same gear-heavy customer.

### 4. Gum/gummies/tablets/capsules — storage demand, weak dispenser demand

There is clear use of caffeine gum, creatine gummies, electrolyte tablets, capsules and chews, but little evidence that users have a significant problem dispensing these one at a time.

The earlier mechanical chew dispenser adds considerable complexity (button, linkage, indexing, feed reliability, anti-double-feed geometry) without equivalent evidence of consumer demand.

A simple **Utility Pod** is therefore currently preferred for V1. It can hold whatever the user wants:

- Caffeine gum
- Creatine gummies
- Electrolyte tablets
- Capsules
- Small chews
- Mints or other small consumables

This eliminates jams and geometry constraints and dramatically reduces manufacturing complexity.

### 5. Sanitiser atomiser — weak gym-specific signal

General hygiene demand exists, but research did not reveal a comparable organic pain point around integrating sanitiser into a gym carry device. It remains a possible future module but should not drive V1 architecture.

### 6. Smelling salts — relevant but niche

Powerlifters/strength athletes sometimes carry smelling salts alongside chalk and supplements, and leakage/containment can be a concern. However, the use case is significantly narrower and creates additional sealing/material considerations. It is better treated as a potential later accessory rather than a V1 requirement.

## Target customer

Gym Stim should **not** target every gym member.

The strongest target is the gear-heavy, supplement-using gym customer who currently carries several small consumables alongside equipment such as straps, wraps, sleeves, belt, shaker and headphones.

Likely early segments:

- Bodybuilding / hypertrophy-focused lifters
- Powerlifters
- Serious recreational lifters
- CrossFit / functional fitness users
- HYROX-style athletes for training use

The core problem is not simply “carrying pre-workout.” It is consolidating several small items that otherwise become separate tubs, packets and containers in the gym bag.

## Emerging V1 architecture

### Module C — permanent Tri-Powder Core

This is the **hero feature and core differentiator**.

- Three independently sealed radial powder chambers
- Neutral chamber identifiers: 1 / 2 / 3
- Select desired chamber
- Unlock dispensing interface
- Dispense directly into bottle/shaker
- Re-lock after use
- Designed to minimise moisture ingress, cross-contamination and powder accumulation in the mechanism

Engineering effort should be concentrated here.

### Module A — sealed Dry Chalk Pod

Simple, reliable chalk storage designed around keeping chalk contained in the gym bag.

Priority is containment and easy access rather than an elaborate dispensing mechanism.

### Module B — Utility Pod

Simple sealed general-purpose consumable storage.

No mechanical one-at-a-time dispenser in the current V1 direction.

Potential contents include gum, gummies, tablets, capsules and chews.

## Modular architecture principle

Where mechanically practical, upper modules should share a **standardised interface**. This creates a platform rather than a fixed three-function gadget.

Potential future modules:

- Dry Chalk Pod
- Utility Pod — Small
- Utility Pod — Large
- Liquid Chalk Pod
- Sanitiser/Spray Pod
- Smelling Salts Pod (subject to appropriate sealing/material design)

A customer could therefore potentially configure the same core as:

- Chalk + Utility + Tri-Powder
- Utility + Utility + Tri-Powder
- Other future combinations

The permanent three-powder core remains the reason to own the system; modules expand its usefulness.

## Product positioning

Avoid positioning Gym Stim as a “14-in-1 gym multitool” or generic modular storage container.

The product should communicate:

**Less stuff. Less mess. Faster access.**

A promising higher-level proposition identified during research is:

> **LOAD ONCE. TRAIN ALL WEEK.**

Whether that claim is physically achievable depends on final usable chamber capacity and real-world powder bulk density. It should not be used as a product promise until capacity testing validates it.

## Critical engineering/market question: capacity

The approximately 50 × 175 mm external cylinder has a theoretical gross cylindrical volume of roughly 344 mL before walls, seals, interfaces, dividers and mechanisms.

A preliminary target discussed was roughly 180–220 mL of usable consumable volume after engineering losses, potentially allocated approximately as:

- Chalk: 40–50 mL
- Utility: 30–40 mL
- Tri-Powder Core: 110–130 mL total
- Approximately 37–43 mL per powder chamber

These are **design targets, not validated capacities**.

The next important study is to measure actual bulk densities and realistic serving volumes for common powder categories and determine how many useful servings fit per chamber after the C mechanism is packaged.

If each powder chamber only carries one small serving, the value proposition weakens. If it can reliably carry multiple useful servings, the consolidation proposition becomes significantly stronger.

## Competitive implication

Existing products validate the problem through powder funnels, stackable containers, shaker-storage systems, pill pods and newer modular supplement-storage products.

However, the observed alternatives generally remain variants of **separate containers that must be opened individually**.

Gym Stim's opportunity is therefore not merely premium materials. The differentiating experience needs to be:

**one compact object → select desired powder → dispense → continue training.**

The cheap alternative (Ziplocks and small plastic tubs) is the real competitive benchmark. Gym Stim must make that workflow feel meaningfully inferior in convenience, cleanliness and organisation.

## Current V1 definition

> **Gym Stim is a premium approximately 50 × 175 mm modular gym carry system designed to consolidate the small consumables serious gym users repeatedly carry. Its permanent core contains three independently sealed powder chambers with direct-to-bottle dispensing. The current V1 configuration adds a sealed dry-chalk module and a general-purpose Utility Pod for gum, gummies, tablets, capsules or chews. Upper modules should use a common interface where practical, enabling future module options without replacing the powder core. The initial commercial product is hardware-only.**

## Current priorities

1. Preserve the Tri-Powder Core as the hero feature.
2. Prototype simple Chalk + Utility modules rather than overengineering secondary functions.
3. Establish realistic powder/chalk/utility capacities inside the 50 × 175 mm envelope.
4. Test real pre-workout, creatine, electrolyte and carbohydrate powders for bulk density, caking, moisture behaviour and dispensing reliability.
5. Validate willingness to pay for the integrated system rather than relying only on evidence that the underlying carrying problem exists.
6. Keep future modules possible through a standardised interface, but prevent feature creep from compromising V1.
