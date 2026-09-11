include <gymstim_params.scad>

module shutter() {
  difference() {
    cylinder(d=well_d + 4, h=1.2);
    translate([4, 0, -1]) cylinder(d=sniff_d, h=4);
  }
}

module salt_puck() {
  difference() {
    union() {
      cylinder(d=OD, h=puck_h);
      for (i = [0:lug_n-1])
        rotate([0,0,i*120])
          translate([ID/2 - 0.2, -lug_w/2, -lug_h]) cube([lug_t, lug_w, lug_h]);
    }
    translate([0,0, puck_h - well_h]) cylinder(d=well_d, h=well_h + 0.2);
    translate([4, 0, puck_h - 1]) cylinder(d=sniff_d, h=2);
    translate([0,0, puck_h - well_h - 1.4]) cylinder(d=well_d + 4.4, h=1.6);
  }
  translate([0,0, puck_h - well_h - 1.3]) rotate([0,0,40]) shutter();
}

module gymstim_puck_a() {
  salt_puck();
  translate([0, -8, puck_h - 0.4])
    linear_extrude(0.5)
      text("NH3", size=3.2, halign="center", valign="center",
           font="Liberation Sans:style=Bold");
}

gymstim_puck_a();
