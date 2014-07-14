include <Configuration.scad>;

width = 40;
depth = 14;
height = tubeOutWidth;

filletRad = 5;
boltOffset = 15;
boltOff = 9;

RCwidth = 20;
RCheight = 10;
RCdepth = 30;

difference(){
	translate([-width/2,0,0]) cube([width,depth,height]);
	translate([width/2-filletRad,depth-filletRad,0])fillet();
	mirror([1,0,0]) translate([width/2-filletRad,depth-filletRad,0])fillet();
	translate([boltOffset,0,-.5])cylinder(r=boltR, h = height+1, $fn = 20);
	mirror([1,0,0])translate([boltOffset,0,-.5])cylinder(r=boltR, h = height+1, $fn = 20);
	translate([-boltOffset,boltOff,height-3])rotate([0,0,30]) cylinder(r=boltHead/2,4,$fn=6);
	mirror([1,0,0]) translate([-boltOffset,boltOff,height-3])rotate([0,0,30]) cylinder(r=boltHead/2,4,$fn=6);

	translate([-RCwidth/2,-RCdepth+depth-1,height-RCheight+.1])cube([RCwidth,RCdepth,RCheight]);
	translate([-(RCwidth-2)/2,-RCdepth+depth+3,height-RCheight+2])cube([RCwidth-2,RCdepth-2,RCheight-2+.1]);
}

module fillet(){
	difference(){
		translate([0,0,-.5]) cube([filletRad+2,filletRad+2,height+1]);
		translate([0,0,-1])cylinder(r=filletRad, h=height+2, $fn=60);
	}
}
