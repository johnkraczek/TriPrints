include <../configuration.scad>
module tube(height){
	difference(){
		union(){
			cube([tubeOutWidth,tubeOutWidth,height]);
			scale([1,scale,1])translate([tubeOutWidth/2,0,0])cylinder(r=tubeOutWidth/2+.1,h=height, $fn=60);
		}
		translate([tubeWall,tubeWall,-.5])cube([tubeInWidth,tubeInWidth,height+1]);
		scale([1,scale,1])translate([tubeInWidth/2+tubeWall,0,-.5])cylinder(r=tubeInWidth/2-.1,h=height+1,$fn=60);
	}
	off = 3.25;
	difference(){
		translate([tubeWall,-off,0])cube([tubeInWidth,tubeWall+off,height]);
		translate([tubeWall+1.5,-off-.2,-.5])cube([tubeInWidth-3,tubeWall+off+.4,height+1]);
	}
}
rotate([-90,0,0])tube(120);