include <Configuration.scad>;
use <tube.scad>;

module tail(){
	
	length = 40;
	
	boltHousingRadius = 4;
	boltHousingTube = tubeOutWidth+1;
	boltHousingScale = 1.3;
	housingDistance = 4;
	
	boltVirtOffset	= 15;
	boltOffsetWidth	= 8;
	boltOffsetLength = tubeOutWidth/2;
	boltScale = 2;
	boltDistance = 5;


	difference(){
		union(){
			tube(length,tubeOutWidth,3,0); // outer

			intersection(){
				tube(length+4,boltHousingTube,4,0); // Bolt Cutter
				union(){
					translate([boltOffsetWidth,boltOffsetLength,length/2-boltVirtOffset]) rotate([90,0,0]) bolt(boltHousingRadius,tubeOutWidth-1,boltHousingScale,housingDistance);
					translate([-1*boltOffsetWidth,boltOffsetLength,length/2-boltVirtOffset]) rotate([90,180,0]) bolt(boltHousingRadius,tubeOutWidth-1,boltHousingScale,housingDistance);
					translate([boltOffsetWidth,boltOffsetLength,length/2+boltVirtOffset]) rotate([90,0,0]) bolt(boltHousingRadius,tubeOutWidth-1,boltHousingScale,housingDistance);
					translate([-1*boltOffsetWidth,boltOffsetLength,length/2+boltVirtOffset]) rotate([90,180,0]) bolt(boltHousingRadius,tubeOutWidth-1,boltHousingScale,housingDistance);
				}
			}
		}
		translate([boltOffsetWidth,boltOffsetLength+.5,length/2-boltVirtOffset]) rotate([90,0,0]) bolt(boltR,tubeOutWidth,boltScale,boltDistance);
		translate([-1*boltOffsetWidth,boltOffsetLength+.5,length/2-boltVirtOffset]) rotate([90,180,0]) bolt(boltR,tubeOutWidth,boltScale,boltDistance);
		translate([boltOffsetWidth,boltOffsetLength+.5,length/2+boltVirtOffset]) rotate([90,0,0]) bolt(boltR,tubeOutWidth,boltScale,boltDistance);
		translate([-1*boltOffsetWidth,boltOffsetLength+.5,length/2+boltVirtOffset]) rotate([90,180,0]) bolt(boltR,tubeOutWidth,boltScale,boltDistance);
		translate([0,0,length/2]) rotate([90,30,0]) cylinder(r=boltHead/2-.2, h=tubeOutWidth, $fn=6);

		translate([0,0,length/2+.5])cube([tubeInWidth,tubeInWidth,length+4], center=true); // inner tube
	}
}

module bolt(radius,height,scale,distance){
	hull(){
		cylinder(r=radius,h=height+1,$fn=30);
		translate([distance,0,0])cylinder(r=radius*scale,h=height+1,$fn=30);
	}
}

tail();