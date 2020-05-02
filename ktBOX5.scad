//
// ktBOX5
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

X = 85;
Y = 25;
Z = 25;

X2 = 100+(panel_thick+1)*2;
Y2 = 25+(panel_thick+1)*2;
Z2 = 20+panel_thick+1;

DX = (X2-X)/2;
DY = (Y2-Y)/2;
DZ = (Z2-Z)/2;

translate([0, 0, 0]) A();
translate([-DX, -DY, 10]) B();
translate([0, 40, 0]) C();

module A()
{
difference()
{
    union()
    {
        translate([-panel_thick, -panel_thick, 0]) cube([X+panel_thick*2, Y+panel_thick*2, Z+panel_thick]);
        translate([-12.5, Y, 0]) cube([11, panel_thick, 10]);
        translate([X+1.5, Y, 0]) cube([11, panel_thick, 10]);
    }
    translate([0, 0, panel_thick+gap1]) cube([X, Y, Z]);
    translate([0, Y/2-2.5, -2.5]) cube([2.5, 5, 10]);
    translate([X-2.5, Y/2-2.5, -2.5]) cube([2.5, 5, 10]);
    translate([-7, Y+panel_thick+gap1, 5]) rotate([90, 0, 0]) cylinder( panel_thick+gap2, d1=5, d2=7.5, $fn=100);
    translate([X+7, Y+panel_thick+gap1, 5]) rotate([90, 0, 0]) cylinder( panel_thick+gap2, d1=5, d2=7.5, $fn=100);
}
}

module B()
{
difference()
{
    union()
    {
        translate([-panel_thick, -panel_thick, 0]) cube([X2+panel_thick*2, Y2+panel_thick*2, Z2+panel_thick]);
        translate([-panel_thick, Y2, -10]) cube([11, panel_thick, 10]);
        translate([X2-11+panel_thick, Y2, -10]) cube([11, panel_thick, 10]);
    }
    translate([0, 0, -gap1]) cube([X2, Y2, Z2]);
    translate([6.5/2+0.5, Y2+panel_thick+gap2, -2-6.5/2]) rotate([90, 0, 0]) cylinder( panel_thick+gap2, d1=6.5, d2=6.5, $fn=100);
    translate([X2+panel_thick-6.5+1, Y2+panel_thick+gap2, -2-6.5/2]) rotate([90, 0, 0]) cylinder(  panel_thick+gap2, d1=6.5, d2=6.5, $fn=100);
}
}

module C()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cube([50, 15, panel_thick]);
        translate([0, 0, 0]) cube([10, 60, panel_thick]);
    }
    translate([10, (15-6.5)/2, -gap1]) cube([35, 6.5, panel_thick+gap2]);
}
}