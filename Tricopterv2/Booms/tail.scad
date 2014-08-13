include <../configuration.scad>

	boltVirtOffset	= 15;
	boltOffsetWidth	= 8;
	boltR = 2;
	tubeH = 50;
	boltPO = tubeH/2;	
	tailOutWidth = tubeOutWidth+10;
	
difference(){	
translate([0,0,0])cube([tailOutWidth,tubeH,tubeOutWidth+boltDepth]);
translate([(tailOutWidth-tubeInWidth)/2,-.5,tubeWall])cube([tubeInWidth,tubeH+1,tubeInWidth]);

translate([tailOutWidth/2,tubeH/2,tubeOutWidth])cylinder(r=boltHead/2, h=boltDepth+1, $fn=6);

translate([tailOutWidth/2+boltOffsetWidth,boltPO-boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([tailOutWidth/2+boltOffsetWidth,boltPO+boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([tailOutWidth/2-boltOffsetWidth,boltPO-boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);
translate([tailOutWidth/2-boltOffsetWidth,boltPO+boltVirtOffset,-.5])cylinder(r=boltR,h=tubeOutWidth+boltDepth+1,$fn=20);

//checking hole pattern:
//translate([tailOutWidth/2,boltPO,10])cube([16,30,30],center=true);

translate([4,tubeH+2,tubeInWidth/2+tubeWall])rotate([90,0,-30])scale([scale,1,1]){
cylinder(r=tubeInWidth/2,h=15,$fn=30);
translate([-tubeInWidth,-tubeInWidth/2,0])cube([tubeInWidth,tubeInWidth,15]);
}

translate([3,3,0])fillet(3,tubeOutWidth+boltDepth,180);
translate([3,tubeH-3,0])fillet(3,tubeOutWidth+boltDepth,90);
translate([tailOutWidth-3,3,0])fillet(3,tubeOutWidth+boltDepth,270);
translate([tailOutWidth-3,tubeH-3,0])fillet(3,tubeOutWidth+boltDepth,0);
}