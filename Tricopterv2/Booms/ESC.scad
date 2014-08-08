include <../configuration.scad>
use <housing.scad>

escThick = 2;

holeOffx = 10;
holeOffy = 10;
TxW = 2;
TxD = 25;

difference(){
	union(){
		difference(){
			cube([escH,escD,escThick]);
			translate([10,10,-.5]) rotate([0,0,180]) fillet(10,3);
			translate([10,escD-10,-.5]) rotate([0,0,90]) fillet(10,3);
		}
		translate([escH-20,-10,0])fillet(10,escThick);
		translate([escH-20, escD+10,0])rotate([0,0,270])fillet(10,escThick);

		translate([escH-10,-10,0])
		cube([tubeOutWidth,80,tubeOutWidth]);
		translate([escH+2,holeOffx,0])cylinder(r=5,h=escThick*2);
		translate([escH+2,escD-10,0])cylinder(r=5,h=escThick*2);
	}
	translate([escH-10,-10,0])
	translate([tubeWall,-.5,tubeWall])cube([tubeInWidth,81,tubeInWidth]);
	
	translate([3,escD-holeOffx-1.5,-.5]) cube([2,3,TxW*2+1]);
	translate([3,holeOffx-1.5,-.5])cube([2,3,TxW*2+1]);
	translate([holeOffy*3+3,escD-holeOffx-1.5,-.5]) cube([2,3,TxW*2+1]);
	translate([holeOffy*3+3,holeOffx-1.5,-.5])cube([2,3,TxW*2+1]);
}

module fillet(radius = 10, height = 2)
difference(){
	cube([radius+1,radius+1,height]);
	translate([0,0,-.5])cylinder(r=radius,h=height+1);
}

