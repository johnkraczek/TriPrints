include <../configuration.scad>
use <housing.scad>

difference(){
	tube(10);
	translate([0,-20,12])rotate([0,90,0])cylinder(r=20,h=12);
}