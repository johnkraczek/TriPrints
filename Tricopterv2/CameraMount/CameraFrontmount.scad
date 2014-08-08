include <..\Configuration.scad>

width = 40;
depth = 30;
boltDepth = 13.5;
height = 6;
filletR = 5;


boltOffset = 15;
boltOff = 8.5;
filletRad = 5;
mirror([0,0,1])
difference(){
union(){
	translate([-width/2,0,0]) cube([width,depth,height]);
	}
	//fillet
	translate([width/2-filletRad,depth-filletRad,0])fillet(filletR,height);
	mirror([1,0,0]) translate([width/2-filletRad,depth-filletRad,0])fillet(filletR,height);
	//boltHoles
	translate([boltOffset,depth-boltDepth,-.5])cylinder(r=boltR, h = height+1, $fn = 20);
	mirror([1,0,0])translate([boltOffset,depth-boltDepth,-.5])cylinder(r=boltR, h = height+1, $fn = 20);	
	
	//boltHead
	translate([boltOffset,depth-boltDepth,-.2])rotate([0,0,30]) cylinder(r=boltHead/2, h=boltDepth, $fn=6);
	mirror([1,0,0]) translate([boltOffset,depth-boltDepth,-.2])rotate([0,0,30]) cylinder(r=boltHead/2, h=boltDepth, $fn=6);
		
	//WireChannels
	translate([0,0,1]){
	translate([width/2-11,4,height/2])	difference(){
	cube([11.5,19,4]);
	translate([2,-.5,-0.5])cube([10,17.5,5]);
	}
	
	mirror([1,0,0])	translate([width/2-11,4,height/2])
	difference(){
	cube([11.5,19,4]);
	translate([2,-.5,-0.5])cube([10,17.5,5]);
	}
	}
	
	}

