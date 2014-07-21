boom = 10;
boomL = 30;

connectW = 22;
connectD = 16;
connectH = 8;

transmitW = 22;
transmitD = 50;
transmitH = 4;

module transmit() {
	difference(){
		union(){
			translate([-connectW/2,0,0]){ 
				cube([connectW,connectD,connectH]);
			}
			translate([-transmitW/2,connectD,0]){
				cube([transmitW,transmitD,transmitH]);
			}
		}
		translate([-boomL/2,3,3]){
			#cube([boomL,boom,boom]);
		}
		
translate([0,boom+1.9,0]){
					translate([6,1,-1]){
			cube([2,2.2,10]);
		}
		mirror([1,0,0]){
			translate([6,1,-1]){
				cube([2,2.2,10]);
			}
		}
}
		
		translate([6,1,-1]){
			cube([2,2.2,10]);
		}
		mirror([1,0,0]){
			translate([6,1,-1]){
				cube([2,2.2,10]);
			}
		}
	}
}

transmit();

