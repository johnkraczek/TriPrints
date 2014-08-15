include <..\Configuration.scad>

width = 40;
depth = 30;
boltOffD = 13.5;
height = 3;
filletR = 5;
boltOffset = 15;
boltOff = 8.5;
filletRad = 5;

module trayMount(){
	//mirror([0,0,1])
	difference(){
		union(){
			translate([-width/2,0,0]) cube([width,depth,height]);
		}
		//fillet
		translate([width/2-filletRad,depth-filletRad,0])fillet(filletR,height);
		mirror([1,0,0]) translate([width/2-filletRad,depth-filletRad,0])fillet(filletR,height);

		//WireChannels
		#translate([0,0,-1.5]){
			translate([width/2-11,4,height])	difference(){
				cube([11.5,19,4]);
				translate([2,-.5,-0.5])cube([10,17.5,5]);
			}
			
			mirror([1,0,0])	translate([width/2-11,4,height])
			difference(){
				cube([11.5,19,4]);
				translate([2,-.5,-0.5])cube([10,17.5,5]);
			}
		}
		//zipTie Holes
		
		#translate([12,13,-.5])cube([2,4,height+1]);
		//testing they are 26 appart through the centers
		// 15 to center from either edge 13 to the edge of the hole 
		//translate([-13,0,0])cube([26,24,3]);
		
		#mirror([1,0,0]){
		translate([12,13,-.5])cube([2,4,height+1]);
		}
	}
}
trayMount();
