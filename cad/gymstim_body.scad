include <gymstim_params.scad>

module knurl_band(z0, h) {
  for (a = [0 : 15 : 345])
    rotate([0,0,a])
      translate([OD/2 - 0.55, -0.35, z0]) cube([0.7, 0.7, h]);
}

module body_tube() {
  difference() {
    cylinder(d=OD, h=L);
    translate([0,0,-1]) cylinder(d=ID, h=L+2);
    translate([0,0,z_a])
      for (i = [0:lug_n-1])
        rotate([0,0,i*120])
          translate([ID/2 - 1, -lug_w/2, 1]) cube([3, lug_w, lug_h+0.4]);
    translate([OD/2 - 1, 0, z_b + b_h - throat_h - 1])
      rotate([0,90,0])
        hull() {
          translate([0,  exit_w/2 - exit_h/2, 0]) cylinder(d=exit_h, h=wall+4);
          translate([0, -(exit_w/2 - exit_h/2), 0]) cylinder(d=exit_h, h=wall+4);
        }
    translate([OD/2 - 1, 0, z_b + b_h - 4])
      rotate([0,90,0]) cylinder(d=btn_d + 0.3, h=wall+4);
    translate([0,0,z_bc - 0.2]) cylinder(d=ID+0.4, h=thread_h);
  }
}

module body_pip() {
  translate([0, OD/2 - 0.2, orifice_h + 1])
    rotate([90,0,0]) linear_extrude(0.6) polygon([[0,3],[-2,0],[2,0]]);
}

module clip_boss() {
  translate([-OD/2 - 1.5, 0, L*0.45])
    hull() {
      cube([3.2, 8, 28], center=true);
      translate([-1,0,12]) cube([2, 6, 4], center=true);
    }
}

module dividers() {
  translate([0,0,z_bc]) cylinder(d=ID - 0.2, h=div);
  translate([0,0,z_ab]) cylinder(d=ID - 0.2, h=div);
}

module gymstim_body() {
  difference() {
    union() {
      body_tube();
      clip_boss();
      body_pip();
      knurl_band(L - 14, 12);
      knurl_band(orifice_h + wedge_h - 6, 10);
    }
    translate([0,0,-1]) cylinder(d=ID, h=L+2);
  }
  dividers();
}

gymstim_body();
