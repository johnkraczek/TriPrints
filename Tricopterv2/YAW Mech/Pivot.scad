use <..\Configuration.scad>

padW = 25.75;
padD = 28.8;
padH = 3.25;

pivotR = 12/2;
pivotH = 13.35;

pivotSpaceD = 9.7;
pivotSpaceOff = 9.6;
pivotBarR=4/2;

filletR = 3;
filletH = 4;
module pivot(){
difference(){
union(){
translate([-padW/2,0,0])cube([padW,padD,padH]);

hull(){
translate([0,0,pivotH-pivotR]) rotate([270,0,0]) cylinder(r=pivotR,h=padD,$fn=30);
translate([-pivotR,0,0]) cube([pivotR*2,padD,1]);
}
}
translate([-pivotR-.1,pivotSpaceOff,-.1]) cube([pivotR*2+.2,pivotSpaceD,pivotH+.2]);
translate([0,-.1,pivotH-pivotR]) rotate([270,0,0])cylinder(r=pivotBarR,h=padD+.2,$fn=20);

translate([padW/2-filletR,padD-filletR,0])fillet(filletR,filletH,0);
mirror(0,1,0) translate([padW/2-filletR,padD-filletR,0])fillet(filletR,filletH,0);
translate([-padW/2+filletR,filletR,0])fillet(filletR,filletH,180);
mirror(0,1,0)translate([-padW/2+filletR,filletR,0])fillet(filletR,filletH,180);
}
}