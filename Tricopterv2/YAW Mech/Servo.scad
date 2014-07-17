servoW = 34.85;
servoD = 30.25;
servoH = 15.5;

serviTabW = 6.5;
servoTabD = 2.5;
servoTabOff = 7;

servoDriveR = 5.8/2;
servoDriveH = 4;
servoDriveOffL = 6.68;
servoDriver = (-servoW/2)+servoDriveOffL+servoDriveR;

module servo(){
translate([-servoW/2,0,0])cube([servoW,servoD,servoH]);
translate([servoW/2,servoTabOff,0])cube([serviTabW,servoTabD,servoH]);
mirror(0,1,0)translate([servoW/2,servoTabOff,0])cube([serviTabW,servoTabD,servoH]);
translate([servoDriver,0,servoH/2]) rotate([90,0,0]) cylinder(r=servoDriveR,h=servoDriveH,$fn=30);
}