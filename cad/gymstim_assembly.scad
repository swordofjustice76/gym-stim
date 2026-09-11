include <gymstim_params.scad>
use <gymstim_body.scad>
use <gymstim_puck_a.scad>
use <gymstim_chew_b.scad>
use <gymstim_powder_c.scad>

EXPLODE = 0;
CELL = 2;
ez = EXPLODE * 28;

module stacked() {
  gymstim_body();
  translate([0,0,z_a + ez*2]) gymstim_puck_a();
  translate([0,0,z_b + ez]) gymstim_chew_b();
  gymstim_powder_c(CELL);
}

stacked();
echo("ml per wedge ~", ml_per_wedge());
echo("stack mm A/B/C", a_h, b_h, c_h);
echo("OD x L", OD, L);
