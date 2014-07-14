include <Configuration.scad>;
use <tube.scad>;

module arm(){

	length = 35;

	boltR = 3;
	boltHeight = 27;
	
	pegDiameter = 10;
	height = (tubeOutWidth+1/2*in);

	difference(){
		union(){
			translate([0,0,0]) tube(length,tubeOutWidth,4,0);
			translate([0,height/2,pegDiameter/2]) rotate([90,0,0]) cylinder(r=pegDiameter/2, h=height, $fn = 50);
		}
		translate([0,0,length/2+8]) cube([tubeInWidth,tubeInWidth,length+2], center=true);
		translate([0,0,3]) cube([tubeInWidth-1.5,tubeInWidth-1.5,10], center=true);
		translate([-tubeInWidth/2-boltR,tubeInWidth-tubeWall/2,boltHeight]) rotate([90,0,0]) cylinder(r=boltR, h=tubeInWidth+tubeWall*3, $fn=30);
		translate([0,0,0]) rotate([90,0,90]) scale([1,1.4,1]) cylinder(h=tubeInWidth, r=5, $fn=30);
	}
}

arm();