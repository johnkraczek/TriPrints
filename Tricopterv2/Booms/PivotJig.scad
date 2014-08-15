include <../configuration.scad>
use <housing.scad>

holeHeight = 10;
jigHeight= 40;
jigDepth = 25;
sleveD = 6;

module pivotJig(){
	difference(){
		union(){
			translate([-2,-2,0])cube([tubeOutWidth+4,tubeOutWidth+4,jigHeight]);
			translate([tubeOutWidth-tubeWall,0,0])cube([jigDepth,tubeOutWidth,15]);
		}
		translate([tubeWall,tubeWall,-1])cube([tubeInWidth,tubeInWidth,jigHeight+2]);
		translate([-1,tubeOutWidth/2,pivotHoleH]) rotate([0,90,0])
		#cylinder(r=boltR,h= tubeOutWidth+30, $fn=20);
		//translate([tubeOutWidth,tubeOutWidth/2,pivotHoleH]) rotate([0,90,0]) cylinder(r=sleveD/2,h= jigDepth, $fn=20);
	}
	hull(){
		tube(1);
	}
}

pivotJig();
