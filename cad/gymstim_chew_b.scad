include <gymstim_params.scad>
well_off = (tab_d + well_gap) / 2;

module well_bore(x) {
  translate([x, 0, 0]) cylinder(d=tab_d + 0.4, h=stack_h + spring_h + 1);
}

module cassette_body() {
  difference() {
    cylinder(d=cas_d, h=b_h - 0.4);
    well_bore(+well_off);
    well_bore(-well_off);
    translate([well_off * 0.15, 0, b_h - throat_h - 0.4])
      cylinder(d=tab_d + 0.5, h=throat_h + 1);
    translate([well_off * 0.5, 0, b_h - throat_h])
      cube([12, tab_d - 2, tab_t + 0.4], center=true);
    translate([-well_off * 0.2, 0, b_h - throat_h - 2])
      cube([10, tab_d - 4, 2.2], center=true);
  }
  for (a = [45, 225])
    rotate([0,0,a]) translate([cas_d/2 - 0.2, -1.5, 1]) cube([1.8, 3, 3]);
}

module follower(x) {
  translate([x, 0, 1]) {
    cylinder(d=tab_d - 1, h=2);
    translate([0,0,-spring_h + 2]) difference() {
      cylinder(d=6, h=spring_h);
      translate([0,0,-1]) cylinder(d=4.2, h=spring_h + 2);
    }
  }
}

module tabs(x) {
  for (i = [0:tabs_each-1])
    translate([x, 0, spring_h + i*tab_t + 1]) cylinder(d=tab_d, h=tab_t - 0.3);
}

module gate_slider() {
  translate([cas_d/2 - 1, 0, b_h - throat_h + exit_h/2])
    cube([2, exit_w - 2, 2], center=true);
}

module button() {
  translate([OD/2 - 1.5, 0, b_h - 4]) rotate([0,90,0]) {
    cylinder(d=btn_d, h=4);
    translate([0,0,-6]) cylinder(d=3, h=6);
  }
}

module gymstim_chew_b() {
  cassette_body();
  follower(+well_off);
  follower(-well_off);
  color("WhiteSmoke") { tabs(+well_off); tabs(-well_off); }
  color("Silver") button();
  color("DimGray") gate_slider();
}

gymstim_chew_b();
