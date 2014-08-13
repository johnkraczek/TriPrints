include <..\Configuration.scad>
use<GoProMount.scad>

trayW = 42;
trayD = 30;
trayH = 2;
translate([0,-11,46.5])rotate([100,0,0])import("GoPro.stl");
translate([-8,0,15+3])rotate([180,0,0])GoProMount(15,10);
translate([-trayW/2,-12,1])cube([trayW,trayD,trayH]);

intersection(){
	translate([20,12,15])rotate([180,90,0])fillet(12,40,0);
	union(){
		translate([20,-6,15])rotate([180,90,-90])fillet(12,20,0);
		mirror([1,0,0]) 
		translate([20,-6,15])rotate([180,90,-90])fillet(12,20,0);
	}
}
translate([7,12,15])rotate([180,90,0])fillet(12,14,0);
translate([20,-6,15])rotate([180,90,-90])fillet(12,5,0);
mirror([1,0,0]) 
translate([20,-6,15])rotate([180,90,-90])fillet(12,5,0);


