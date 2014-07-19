
include <..\Configuration.scad>

module rear(){
	cubew = 50;
	cubed = 45;
	rad=100;
	fillet = 11;
	width = 40;
	height = 6;
	boltOffset=5;
	boltWidth = 8;
	boltHeight = 15;

	wall = wall+.6;
	plugHeight = plugHeight+1;
	plugWidth= plugWidth -.3;
	

	
	mirror([0,0,1]){
	difference(){

			translate([-cubew/2,0,0])cube([cubew,cubed,height]);
			translate([0,-.2,1]){
				difference(){
					translate([-(plugWidth+2*wall)/2,0,-plugHeight-wall])cube([plugWidth+(2*wall),plugDepth+wall,plugHeight+wall]);
					translate([-plugWidth/2,-.2,-plugHeight])cube([plugWidth,plugDepth+.2,plugHeight+.2]);
					translate([-(plugWidth-2*hole)/2,5,-plugHeight+hole])cube([plugWidth-(2*hole),plugDepth-hole,plugHeight-hole+.2]);
				}
			}


		translate([rad+15,.3,-1])cylinder(r=rad, h=10, $fn=200);
		difference(){
			translate([9.25,cubed-fillet-2.5,-.5])cube([20,20,8]);
			translate([9.25,cubed-fillet,-1])cylinder(r=fillet+.05,h =10,$fn=50);
		}

		mirror(1,0,0){
			translate([rad+15,.3,-1])cylinder(r=rad, h=10, $fn=200);
			difference(){
				translate([9.25,cubed-fillet-2.5,-.5])cube([20,20,8]);
				translate([9.25,cubed-fillet,-1])cylinder(r=fillet+.05,h =10,$fn=50);
			}
		}


		//WireChannels
		translate([0,6.5,1]){
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
		
		//bolts
		
		translate([boltWidth,boltOffset,-.5])cylinder(r=boltR,h=12, $fn=20);
		translate([boltWidth,boltOffset+30,-.5])cylinder(r=boltR,h=12, $fn=20);
		translate([-boltWidth,boltOffset,-.5])cylinder(r=boltR,h=12, $fn=20);
		translate([-boltWidth,boltOffset+30,-.5])cylinder(r=boltR,h=12, $fn=20);
		//boltHead
		translate([boltWidth,boltOffset,-.2])rotate([0,0,30])cylinder(r=boltHead/2,h=3, $fn=6);
		translate([boltWidth,boltOffset+30,-.2])rotate([0,0,30])cylinder(r=boltHead/2,h=3, $fn=6);
		translate([-boltWidth,boltOffset,-.2])rotate([0,0,30])cylinder(r=boltHead/2,h=3, $fn=6);
		translate([-boltWidth,boltOffset+30,-.2])rotate([0,0,30])cylinder(r=boltHead/2,h=3, $fn=6);
	}
}
}

rear();

/*
	//WireChannels
	translate([width/2-11,4,height/2])	difference(){
	cube([11.5,19,4]);
	translate([2,-.5,-0.5])cube([10,17.5,5]);
	}
	mirror([1,0,0])	translate([width/2-11,4,height/2])
	difference(){
	cube([11.5,19,4]);
	translate([2,-.5,-0.5])cube([10,17.5,5]);
	}
	*/