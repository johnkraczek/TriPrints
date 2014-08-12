include <../Configuration.scad>;

width = 40;
depth = 14;
height = tubeOutWidth+boltDepth-tubeWall;

boltOffset = 15;
boltOff = 8.5;

RCwidth = 22;
RCheight = 12.55;
RCdepth = 44;
RClipH = 2;

filletR = 5;
filletRad = 5;

difference(){
	union(){
		translate([-RCwidth/2+.1,-RCdepth+depth-3,0])cube([RCwidth-.2,RCdepth+2,tubeOutWidth-RCheight+boltDepth+RClipH]);
		translate([-width/2,0,0]) cube([width,depth,height]);
	}
	translate([width/2-filletRad,depth-filletRad,0])fillet(filletR,height);
	mirror([1,0,0]) translate([width/2-filletRad,depth-filletRad,0])fillet(filletR,height);
	translate([boltOffset,0,-.5])cylinder(r=boltR, h = height+1, $fn = 20);
	mirror([1,0,0])translate([boltOffset,0,-.5])cylinder(r=boltR, h = height+1, $fn = 20);
	translate([-boltOffset,boltOff,height-boltDepth])rotate([0,0,30]) cylinder(r=boltHead/2,4,$fn=6);
	mirror([1,0,0]) translate([-boltOffset,boltOff,height-boltDepth])rotate([0,0,30]) cylinder(r=boltHead/2,4,$fn=6);
	translate([-11.5,6.4,height-boltDepth])cube([23,4.25,boltDepth+.2]);
	translate([-RCwidth/2,-RCdepth+depth-1,height-RCheight+.1])cube([RCwidth,RCdepth,RCheight]);
	translate([-(RCwidth-4)/2,-RCdepth+depth+3,height-RCheight+2])cube([RCwidth-4,RCdepth-2,RCheight-2+.1]);
}
