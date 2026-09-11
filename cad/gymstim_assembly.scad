// GymStim assembly — exploded + stacked views
// Shows how the three chambers + modules stack with minimal user actions.
use <gymstim_body.scad>
use <gymstim_chew_gate.scad>
use <gymstim_flask.scad>
use <gymstim_salt_cap.scad>

module exploded() {
  translate([0,0,120]) salt_cap();
  translate([0,0,70])  chew_gate_b3_stub();
  translate([0,0,20])  flask_stub();
  gymstim_body();
}

module stacked() {
  gymstim_body();
  translate([0,0,salt_h]) salt_cap();
}

// Default: stacked Elite
stacked();

// Uncomment for exploded:
// exploded();
