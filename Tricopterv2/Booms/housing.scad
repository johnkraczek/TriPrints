include <../configuration.scad>

module tube(height)
difference(){
	union(){
		cube([tubeOutWidth,tubeOutWidth,height]);
		scale([1,scale,1])translate([tubeOutWidth/2,0,0])cylinder(r=tubeOutWidth/2,h=height, $fn=60);
	}

	translate([tubeWall,tubeWall,-.5])cube([tubeInWidth,tubeInWidth,height+1]);
	scale([1,scale,1])translate([tubeInWidth/2+tubeWall,tubeWall,-.5])cylinder(r=tubeInWidth/2,h=height+1,$fn=60);
}

tube(50);