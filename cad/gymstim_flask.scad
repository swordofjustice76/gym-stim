// GymStim flask — Chamber C, screw-off, C3 taper pour
// 70 ml Elite/Mid, ~90 ml Lite. Fill lines at 20 / 45 / 70 (90).
// Desiccant puck in lid. Wide mouth for tub scoop, narrow neck for bottle pour.

/* [Config] */
flask_tier = "elite";   // "lite" | "mid" | "elite"
vol = (flask_tier=="lite") ? 90 : 70;

OD = 38;
wall = 1.5;
neck_d = 22;            // pour neck
mouth_d = 30;           // wide fill mouth

module flask_body() {
  difference() {
    cylinder(d=OD-2*wall, h=vol, $fn=64);
    translate([0,0,-1]) cylinder(d=OD-4*wall, h=vol+2, $fn=64);
  }
}

module taper_pour() {
  // C3: wide top -> narrow neck, 45 deg taper
  translate([0,0,vol-8])
    cylinder(d1=mouth_d, d2=neck_d, h=8, $fn=48);
}

module fill_lines() {
  for (z = [20, 45, vol])
    translate([0,0,z]) cylinder(d=OD-2*wall+0.4, h=0.3, $fn=64);
}

module desiccant_puck() {
  // sits in screw lid
  translate([0,0,vol+2]) cylinder(d=neck_d-2, h=4, $fn=32);
}

flask_body();
taper_pour();
fill_lines();
desiccant_puck();
