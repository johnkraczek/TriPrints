include <../configuration.scad>
use <housing.scad>

holeHeight = 10;
module pivot(){
	difference(){
		union(){
			tube(50);
			translate([tubeOutWidth-tubeWall,0,0])cube([boltDepth,tubeOutWidth,40]);
		}
		translate([tubeOutWidth/2,3,holeHeight])scale([1,1,1.25])rotate([90,0,0]) cylinder(r=tubeInWidth/2-1,h=7.5,$fn=50);
		translate([tubeWall+1,-tubeInWidth/2,-.5])cube([tubeInWidth-2,tubeInWidth,holeHeight+.5]);

		translate([-1,tubeOutWidth/2,pivotHoleH]) rotate([0,90,0]) cylinder(r=2,h= tubeOutWidth+5, $fn=20);
	}

	hull(){
		tube(1);
	}
}

pivot();
translate([-15,8,0])mirror([0,1,0])pivot();