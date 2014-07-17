use <..\Configuration.scad>
include <servo.scad>
use <Pivot.scad>

padW =	16;
padD =	85;
padH =	4;

pivotW = 12;
pivotR = 12/2;
pivotH = 13.8;
pivotD = 28.85;

pivotSpaceD = 9.7;
pivotSpaceOff = 9.6;
pivotBarR=4/2;
pivotStartOff = 4;

servoOffset = 16.5 + pivotD;

translate([0,pivotStartOff,padH])
difference(){
hull(){
translate([0,0,pivotH-pivotR]) rotate([270,0,0]) cylinder(r=pivotR,h=pivotD,$fn=30);
translate([-pivotR,0,0]) cube([pivotR*2,pivotD,1]);
}
translate([-pivotR-.1,pivotSpaceOff,-.1]) cube([pivotR*2+.2,pivotSpaceD,pivotH+.1]);
translate([0,-.1,pivotH-pivotR]) rotate([270,0,0])cylinder(r=pivotBarR,h=pivotD+.2,$fn=20);
}

translate([-padW/2,0,0])cube([padW,padD,padH]);
translate([-servoDriver,servoOffset,(-servoH/2)+pivotH-pivotR+padH])%servo();

translate([0,-1,0])mirror([0,0,1])pivot();

//pivotSpaceD+pivotStartOff