include <..\Configuration.scad>
use <CameraFrontmount.scad>
use <CameraRearMount.scad>

trayW = 40;
trayD = 227;
trayH = 3;
/*
%translate([0,12,0])
difference(){
	translate([-trayW/2,-12,0])cube([trayW,trayD,trayH]);
	//zip Tie Holes. 
	translate([-15,-8,2])cube([3,3,5], center=true);
	translate([15,-8,2])cube([3,3,5], center=true);
	translate([-15,12,2])cube([3,3,5], center=true);
	translate([15,12,2])cube([3,3,5], center=true);
}*/
%translate([10,-5,-4])cube([40,93,1]);

translate([10,-50,0])cube([40,200,1]);

color("blue")translate([-24,-48,10])linear_extrude(height = 1)
import (file = "Tricopter.dxf");

translate([30,64.8,0])frontMount();
translate([30,-28,0])frontMount();

//translate([29.5,-34.5,0]) rear();


