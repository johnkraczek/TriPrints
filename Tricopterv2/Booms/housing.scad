include <configuration.scad>

module tube(height)
difference(){
union(){
cube([tubeOut,tubeOut,height]);
scale([1,scale,1])translate([tubeOut/2,0,0])cylinder(r=tubeOut/2,h=height, $fn=60);
}

translate([wallThick,wallThick,-.5])cube([tubeW,tubeW,height+1]);
scale([1,scale,1])translate([tubeW/2+wallThick,wallThick,-.5])cylinder(r=tubeW/2,h=height+1,$fn=60);
}

tube(50);