include <gymstim_params.scad>

module wedge_walls() {
  difference() {
    cylinder(d=wedge_id + 2, h=wedge_h);
    translate([0,0,2]) cylinder(d=wedge_id, h=wedge_h);
  }
  for (a = [0, 120, 240])
    rotate([0,0,a]) translate([-0.8, 0, 0]) cube([1.6, wedge_id/2, wedge_h]);
}

module orifice_plate(which=2) {
  ang = (which - 1) * 120;
  difference() {
    union() {
      cylinder(d=OD, h=orifice_h);
      for (a = [0:20:340])
        rotate([0,0,a]) translate([OD/2 - 0.4, -0.3, 1]) cube([0.5, 0.6, orifice_h - 2]);
    }
    rotate([0,0,ang]) translate([0, hole_r, -1]) cylinder(d=hole_d, h=orifice_h + 2);
    for (i = [1:3])
      rotate([0,0,(i-1)*120])
        translate([0, OD/2 - 0.3, orifice_h/2])
          rotate([90,0,180])
            linear_extrude(0.6)
              text(str(i), size=3.5, halign="center", valign="center",
                   font="Liberation Sans:style=Bold");
  }
}

module carrier_thread() {
  translate([0,0,c_h - thread_h]) difference() {
    cylinder(d=ID - 0.3, h=thread_h);
    translate([0,0,-1]) cylinder(d=ID - 2.4, h=thread_h + 2);
  }
}

module gymstim_powder_c(which=2) {
  translate([0,0,orifice_h]) wedge_walls();
  orifice_plate(which);
  carrier_thread();
}

gymstim_powder_c(2);
