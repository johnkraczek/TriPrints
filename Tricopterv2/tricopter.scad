use <TricopterTail.scad>
use <TricopterArm.scad>

translate([20,0,0]) tail();
translate([0,0,0]) rotate([0,0,90]) arm();
translate([0,20,0]) arm();