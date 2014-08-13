include <../configuration.scad>

	boltVirtOffset	= 15;
	boltOffsetWidth	= 6;
	boltR = 2;
	tubeH = 50;
	boltPO = tubeH/2;	
	tailOutWidth = tubeOutWidth+10;
	
difference(){	
translate([-3,0,0])cube([tailOutWidth,tubeH,tubeOutWidth+boltDepth]);
translate([tubeWall,-.5,tubeWall])cube([tubeInWidth,tubeH+1,tubeInWidth]);

translate([tubeOutWidth/2,tubeH/2,tubeOutWidth])cylinder(r=boltHead/2, h=boltDepth+1, $fn=6);

translate([-3,0,0]){
translate([tailOutWidth/2+boltOffsetWidth,boltPO-boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([tailOutWidth/2+boltOffsetWidth,boltPO+boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([tailOutWidth/2-boltOffsetWidth,boltPO-boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([tailOutWidth/2-boltOffsetWidth,boltPO+boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
}
translate([-.8,tubeH+2,tubeInWidth/2+tubeWall])rotate([90,0,-30])scale([.6,1,1]) cylinder(r=tubeInWidth/2,h=10,$fn=30);

translate([0,3,0])fillet(3,tubeOutWidth+boltDepth,180);
translate([0,tubeH-3,0])fillet(3,tubeOutWidth+boltDepth,90);

#translate([tailOutWidth-6,3,0])fillet(3,tubeOutWidth+boltDepth,270);
#translate([tailOutWidth-6,tubeH-3,0])fillet(3,tubeOutWidth+boltDepth,0);
}