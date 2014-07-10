use <tube.scad>
module tail(){
in = 25.4;


length = 40;
pW =0.3;

outWidth =  12;
inWidth = 10;


boltOffset	= 15;
boltWidth	= 8;
boltDepth	= 6;
boltOutR = 4;
boltInR = 2;


difference(){
union(){
tube(length,13.5,3,0); // outer

intersection(){
tube(length+4,16,4,0); // Bolt Cutter
union(){
translate([boltWidth,boltDepth,length/2-boltOffset]) rotate([90,0,0]) cylinder(r=boltOutR,h=outWidth,$fn=30);
translate([-1*boltWidth,boltDepth,length/2-boltOffset]) rotate([90,0,0]) cylinder(r=boltOutR,h=outWidth,$fn=30);
translate([boltWidth,boltDepth,length/2+boltOffset]) rotate([90,0,0]) cylinder(r=boltOutR,h=outWidth,$fn=30);
translate([-1*boltWidth,boltDepth,length/2+boltOffset]) rotate([90,0,0]) cylinder(r=boltOutR,h=outWidth,$fn=30);
}
}
}
translate([boltWidth,boltDepth+.5,length/2-boltOffset]) rotate([90,0,0]) cylinder(r=boltInR,h=outWidth+1,$fn=30);
translate([-1*boltWidth,boltDepth+.5,length/2-boltOffset]) rotate([90,0,0]) cylinder(r=boltInR,h=outWidth+1,$fn=30);
translate([boltWidth,boltDepth+.5,length/2+boltOffset]) rotate([90,0,0]) cylinder(r=boltInR,h=outWidth+1,$fn=30);
translate([-1*boltWidth,boltDepth+.5,length/2+boltOffset]) rotate([90,0,0]) cylinder(r=boltInR,h=outWidth+1,$fn=30);
translate([0,0,length/2]) rotate([90,30,0]) cylinder(r=7/2+.2, h=outWidth, $fn=6);

translate([0,0,-.5])tube(length+2,10.5,2,0); // inner tube
}

//translate([-8,6,5])rotate([90,0,0]) cube([16,30,10]);
}
tail();
