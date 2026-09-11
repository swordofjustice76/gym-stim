// GymStim chew gate — B3 one-click (Elite/Mid) + Lite gravity variant
// Dime-class cassette: ~18 mm dia, 5.5 mm thick tab, 10-tab stack (~55 mm)
// Goal: one thumb press = one chew, no fumbling.

/* [Config] */
gate = "b3";            // "b3" (one-click) | "gravity" (Lite)

OD = 38;
wall = 2.0;
cas_d = 18;              // cassette OD
tab_t = 5.5;            // tab thickness
tabs = 10;
stack_h = tabs * tab_t;  // ~55 mm

module cassette() {
  // plastic insert, quarter-turn lock into body
  difference() {
    cylinder(d=cas_d, h=stack_h, $fn=48);
    // internal pockets for tabs (simplified)
    for (i=[0:tabs-1])
      translate([0,0,i*tab_t+0.5]) cylinder(d=cas_d-3, h=tab_t-1, $fn=48);
  }
  // quarter-turn lugs
  for (a=[0,90,180,270])
    rotate([0,0,a]) translate([cas_d/2-0.5, -1.2, stack_h-2])
      cube([1.5, 2.4, 2]);
}

module gate_b3() {
  // one-click: thumb button -> pawl advances one tab -> click
  // (schematic; real geometry needs spring + detent)
  translate([OD/2-4, 0, 30]) {
    // button boss
    cylinder(d=8, h=6, $fn=24);
    // pawl arm
    translate([0,0,6]) cube([10, 2, 2]);
  }
}

module gate_gravity() {
  // Lite: no button, tilt to drop one tab
  translate([OD/2-3, 0, 30]) cylinder(d=6, h=4, $fn=24);
}

if (gate == "b3") { cassette(); gate_b3(); }
else { cassette(); gate_gravity(); }
