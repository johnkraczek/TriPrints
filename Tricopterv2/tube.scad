$fn = 50;


module tube(height, width, fillet, hole){
	if(hole>0){
		difference(){
			translate([fillet-width/2,fillet-width/2,0]){
				minkowski(){
					cube([width-fillet*2,width-fillet*2,height]);
					cylinder(r=fillet,h=1,center);
				}
			}
			translate([width/2,width/2,-.5])
			cylinder(h=height+2,r=hole); 
		}
	} else {
	translate([fillet-width/2,fillet-width/2,0]){
		minkowski(){
			cube([width-fillet*2,width-fillet*2,height]);
			cylinder(r=fillet,h=1,center);
		}
	}
}
}



tube(20,20,3,0);