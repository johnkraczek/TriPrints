include <../configuration.scad>
use <housing.scad>

difference(){
	tube(20);
	translate([0,-(tubeOutWidth+(tubeInWidth)),22])rotate([0,90,0])cylinder(r=20,h=tubeOutWidth);
}