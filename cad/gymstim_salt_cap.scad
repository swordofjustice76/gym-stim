// GymStim salt cap — A5, Elite only. Replaceable consumable.
// 3-4 ml well, twist port, recessed warning mark on face.
// Body never touches ammonia → clean legal split.

OD = 38;
cap_h = 14;
well_d = 16;
well_h = 8;

module salt_cap() {
  difference() {
    cylinder(d=OD, h=cap_h, $fn=64);
    // twist port (bayonet)
    translate([0,0,-1]) cylinder(d=OD-6, h=cap_h+2, $fn=64);
    // well for salts
    translate([0,0,cap_h-well_h]) cylinder(d=well_d, h=well_h+1, $fn=48);
  }
  // detent click ring
  translate([0,0,cap_h-1]) cylinder(d=OD-1, h=1, $fn=64);
  // recessed warning mark (won't wear off)
  translate([0,0,cap_h-0.5]) linear_extrude(0.6)
    text("NH3", size=3, halign="center", valign="center");
}

salt_cap();
