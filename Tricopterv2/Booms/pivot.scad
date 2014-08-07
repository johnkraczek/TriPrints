include <configuration.scad>
use <housing.scad>

holeHeight = 10;

difference(){
union(){
tube(50);
translate([-3+wallThick,0,0])cube([2.8,tubeOut,40]);
}
translate([tubeOut/2,0,holeHeight])scale([1,1,1.25])rotate([90,0,0]) cylinder(r=tubeW/2,h=5,$fn=50);
translate([wallThick,-tubeW/2,-.5])cube([tubeW,tubeW,holeHeight+.5]);

#translate([-3.5,tubeOut/2,pivotHoleH]) rotate([0,90,0]) cylinder(r=2,h= tubeOut+5, $fn=20);
}

hull(){
tube(.8);
}
