
include <..\Configuration.scad>

module plugCover(){
	difference(){
		translate([-(plugWidth+2*wall)/2,0,-plugHeight-wall])cube([plugWidth+(2*wall),plugDepth+wall,plugHeight+wall]);
		translate([-plugWidth/2,-.2,-plugHeight])cube([plugWidth,plugDepth+.2,plugHeight+.2]);
		translate([-(plugWidth-2*hole)/2,5,-plugHeight+hole])cube([plugWidth-(2*hole),plugDepth-hole,plugHeight-hole+.2]);
	}
}
rotate([-90,0,0]){
plugCover();
}