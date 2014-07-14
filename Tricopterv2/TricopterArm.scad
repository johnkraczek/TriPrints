
use <tube.scad>

module arm(){
	in = 25.4;

	length = 35;

	tubeInWidth = 11;
	tubeWall = 2.8;

	
	tubeOutWidth = tubeInWidth+2*tubeWall;

	pegDiameter = 10;
	height = (tubeOutWidth+1/4*in);

	difference(){
		union(){
			translate([0,0,0]) tube(length,tubeOutWidth,4,0);
			translate([0,height/2,pegDiameter/2]) rotate([90,0,0]) cylinder(r=pegDiameter/2, h=height, $fn = 50);
		}
		translate([0,0,-1]) tube(length+2,tubeInWidth,2,0);
	}
}

arm();