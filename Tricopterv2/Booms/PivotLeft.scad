include <../configuration.scad>
use <housing.scad>

holeHeight = 10;
boltpegHeight = 24;
module pivot(height){
	difference(){
		union(){
			tube(height);
			translate([tubeOutWidth,0,0])cube([boltDepth,tubeOutWidth,35]);
		}
		translate([tubeOutWidth/2,3,holeHeight])scale([1,1,1.25])rotate([90,0,0]) cylinder(r=tubeInWidth/2-1,h=10,$fn=50);
		translate([tubeWall+1,-tubeInWidth+3,-.5])cube([tubeInWidth-2,tubeInWidth,holeHeight+.5]);

		translate([-1,tubeOutWidth/2,pivotHoleH]) rotate([0,90,0]) cylinder(r=boltR,h= tubeOutWidth+5, $fn=20);
		translate([-.5,tubeOutWidth+1,boltpegHeight]) rotate([0,90,0]) cylinder(r=boltR, h=tubeInWidth+boltDepth+2*tubeWall+1, $fn=30);
	}
		cube([tubeOutWidth,tubeOutWidth,tubeWall]);
}

pivot(40);
