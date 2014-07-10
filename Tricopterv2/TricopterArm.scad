
use <tube.scad>

module arm(){
in = 25.4;
height = (12+1/4*in);
length = 35;

tubeOutWidth = 13.5;
tubeInWidth = 10.5;
pegDiameter = 10;

difference(){
union(){
translate([0,0,0]) tube(length,tubeOutWidth,3,0);
translate([0,height/2,pegDiameter/2]) rotate([90,0,0]) cylinder(r=pegDiameter/2, h=height, $fn = 50);
}
translate([0,0,-1]) tube(length+2,tubeInWidth,2,0);
}
}

arm();