// GymStim shot capsule — standalone pre-workout shot, screw-on shaker style
// Small strong mix (~30-40 ml), not a full drink. Works with any tier.

OD = 32;                 // slightly slimmer than stick
H = 55;
wall = 1.5;
neck_d = 18;

module capsule_body() {
  difference() {
    cylinder(d=OD, h=H, $fn=48);
    translate([0,0,-1]) cylinder(d=OD-2*wall, h=H+2, $fn=48);
  }
}

module screw_neck() {
  translate([0,0,H-6]) cylinder(d=neck_d, h=6, $fn=48);
}

module shaker_grid() {
  // internal grid to break clumps on shake
  for (i=[-1:1]) for (j=[-1:1])
    translate([i*4, j*4, 10]) cube([1,1,H-20], center=true);
}

capsule_body();
screw_neck();
shaker_grid();
