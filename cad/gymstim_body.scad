// GymStim body — parametric, three-tier (Lite / Mid / Elite)
// 38 mm OD x 190 mm long. One CAD family, material + salt chamber change per tier.
// Open in OpenSCAD or https://modelrift.com

/* [Tier] */
tier = "elite";          // "lite" | "mid" | "elite"

/* [Body] */
OD = 38;                 // outer diameter mm
L  = 190;                // total length mm
wall = 2.0;              // shell wall

/* [Chambers - axial stack, top to bottom] */
salt_h = 22;             // Chamber A (salts) - Elite only
chew_h = 55;             // Chamber B (chews) - shared
flask_h = 70;            // Chamber C (flask) - Lite pushes to ~90

/* [Tactile zones] */
knurl_pitch = 1.2;
knurl_depth = 0.6;

module knurl_ring(z0, h) {
  // simple axial knurl via rotated cubes (preview-friendly)
  for (a = [0 : 30 : 330])
    rotate([0,0,a])
      translate([OD/2 - knurl_depth, -0.4, z0])
        cube([knurl_depth+0.2, 0.8, h]);
}

module body_shell() {
  difference() {
    cylinder(d=OD, h=L, $fn=64);
    translate([0,0,-1]) cylinder(d=OD-2*wall, h=L+2, $fn=64);
  }
}

module chamber_dividers() {
  // thin internal walls separating A/B/C
  translate([0,0,salt_h]) cylinder(d=OD-2*wall, h=1.2, $fn=64);
  translate([0,0,salt_h+chew_h]) cylinder(d=OD-2*wall, h=1.2, $fn=64);
}

module tier_features() {
  if (tier == "elite") {
    knurl_ring(2, 14);                       // top knurl (salt zone)
    knurl_ring(salt_h+chew_h+4, 16);         // bottom knurl (flask grip)
  } else if (tier == "mid") {
    knurl_ring(salt_h+chew_h+4, 16);         // flask grip only
  } else { // lite - no salt chamber, shorter or bigger flask
    knurl_ring(chew_h+4, 16);
  }
}

module gymstim_body() {
  body_shell();
  chamber_dividers();
  tier_features();
}

gymstim_body();
