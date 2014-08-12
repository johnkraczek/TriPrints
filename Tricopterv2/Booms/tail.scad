include <../configuration.scad>

	boltVirtOffset	= 15;
	boltOffsetWidth	= 8;
	boltR = 2;
	tubeH = 45;
	boltPO = tubeH/2;	
	
difference(){	
translate([-3,0,0])cube([tubeOutWidth+6,tubeH,tubeOutWidth+boltDepth]);
translate([tubeWall,-.5,tubeWall])cube([tubeInWidth,tubeH+1,tubeInWidth]);

translate([tubeOutWidth/2,tubeH/2,tubeOutWidth])cylinder(r=boltHead/2, h=boltDepth+1, $fn=6);

translate([-boltR+tubeWall,boltPO-boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([-boltR+tubeWall,boltPO+boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([tubeWall+tubeInWidth+boltR,boltPO-boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([tubeWall+tubeInWidth+boltR,boltPO+boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);

translate([-.8,tubeH+2,tubeInWidth/2+tubeWall])rotate([90,0,-30])scale([.6,1,1]) cylinder(r=tubeInWidth/2,h=10,$fn=30);

translate([0,3,0])fillet(3,tubeOutWidth+boltDepth,180);
translate([0,tubeH-3,0])fillet(3,tubeOutWidth+boltDepth,90);
translate([tubeOutWidth,3,0])fillet(3,tubeOutWidth+boltDepth,270);
translate([tubeOutWidth,tubeH-3,0])fillet(3,tubeOutWidth+boltDepth,0);
}