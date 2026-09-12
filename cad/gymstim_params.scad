// Gym Stim — V2 locked dimensions
// 44 x 175. 12 Sep 2026.
// Twin-column chews, priority throat, NO rotate.
// C = three session wedges + ear dump (see gym-stim-V2.md). Orifice plate retired.

OD = 44;
L = 175;
wall = 2.0;
ID = OD - 2*wall;

orifice_h = 8;
wedge_h = 96;
c_h = orifice_h + wedge_h;
div = 1.2;
b_h = 40;
a_h = 22;
thread_h = 8;
lip_h = L - (c_h + div + b_h + div + a_h);

z_orifice = 0;
z_wedges = orifice_h;
z_bc = c_h;
z_b = c_h + div;
z_ab = z_b + b_h;
z_a = z_ab + div;

puck_h = a_h;
well_d = 18;
well_h = 14;
sniff_d = 4;
lug_n = 3;
lug_w = 8;
lug_h = 3;
lug_t = 1.6;

tab_d = 18;
tab_t = 5.5;
tabs_each = 4;
well_gap = 2;
cas_d = tab_d*2 + well_gap;
stack_h = tabs_each * tab_t;
spring_h = 12;
throat_h = 6;
btn_d = 8;
btn_travel = 3;
exit_w = 18.5;
exit_h = 7;

wedge_id = ID - 2;
hole_d = 10;
hole_r = 11;
pip_w = 3;
$fn = 64;

function ml_per_wedge() = (PI * pow(wedge_id/2, 2) / 3) * (wedge_h - 4) / 1000;
