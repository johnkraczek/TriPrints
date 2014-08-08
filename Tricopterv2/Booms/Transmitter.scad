include <../configuration.scad>
use <housing.scad>

TxW = 2;
TxH = 60;
TxD = 30;
holeOffx = 5;
holeOffy = 10;

difference(){
	union(){
		difference(){
			cube([TxH,TxD,TxW]);
			translate([10,10,-.5]) rotate([0,0,180]) fillet(10,3);
			translate([10,TxD-10,-.5]) rotate([0,0,90]) fillet(10,3);
		}
		translate([TxH-11,-10,0])fillet(10,TxW);
		translate([TxH-11, TxD+10,0])rotate([0,0,270])fillet(10,TxW);
	}
	translate([holeOffy,TxD - holeOffx,-.5]) cube([3,2,TxW+1]);
	translate([holeOffy,holeOffx-2,-.5])cube([3,2,TxW+1]);
	translate([holeOffy*4,TxD - holeOffx,-.5]) cube([3,2,TxW+1]);
	translate([holeOffy*4,holeOffx-2,-.5])cube([3,2,TxW+1]);
}
translate([TxH-.8,-10,tubeOutWidth])rotate([270,0,0])tube(TxD+20);

module fillet(radius = 10, height = 2)
difference(){
	cube([radius+1,radius+1,height]);
	translate([0,0,-.5])cylinder(r=radius,h=height+1);
}

