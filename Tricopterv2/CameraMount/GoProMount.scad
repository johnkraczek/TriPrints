$fn = 50;
bolt_hole_r = 5.5 / 2;
module GoProMount(baseD = 10,baseH = 10)
{
	translate([0,3,0])
	{
		difference()
		{
			union()
			{
				cube([3,baseH,baseD]);
				translate([0,baseH,baseD/2]) rotate([90,0,90]) cylinder(3,baseD/2,baseD/2);
				translate([6.5,0,0])
				{
					cube([3.4,baseH,baseD]);
					translate([0,baseH,baseD/2]) rotate([90,0,90]) cylinder(3.3,baseD/2,baseD/2);
				}
				translate([13,0,0])
				{
					cube([3,baseH,baseD]);
					translate([0,baseH,baseD/2]) rotate([90,0,90]) cylinder(3,baseD/2,baseD/2);
				}
			}
			translate([-7, baseH, baseD/2]) rotate([0,90,0]) cylinder(30, bolt_hole_r, bolt_hole_r);
		}
	}
	cube([16,3,baseD]);
}
GoProMount();

