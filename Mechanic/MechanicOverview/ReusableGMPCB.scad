include <PCBDimensions.scad>;

module Reusable_GM_PCB()
{
    linear_extrude(height = PCB_THICKNESS, convexity = 10, twist = 0) 
    {
        difference()
        {
            square([PCB_REUSABLE_X, PCB_REUSABLE_Y], center=true);

            translate([-PCB_REUSABLE_X/2 + PCB_REUSABLE_DRILL_DISTNCE_X, -PCB_REUSABLE_Y/2 + PCB_REUSABLE_DRILL_DISTNCE_Y, 0])
            {
                circle(d=PCB_REUSABLE_DRILL_DIAMETER);
            }
            
            translate([-PCB_REUSABLE_X/2 + PCB_REUSABLE_DRILL_DISTNCE_X, PCB_REUSABLE_Y/2 - PCB_REUSABLE_DRILL_DISTNCE_Y, 0])
            {
                circle(d=PCB_REUSABLE_DRILL_DIAMETER);
            }

            translate([PCB_REUSABLE_X/2 - PCB_REUSABLE_DRILL_DISTNCE_X, -PCB_REUSABLE_Y/2 + PCB_REUSABLE_DRILL_DISTNCE_Y, 0])
            {
                circle(d=PCB_REUSABLE_DRILL_DIAMETER);
            }

            translate([PCB_REUSABLE_X/2 - PCB_REUSABLE_DRILL_DISTNCE_X, PCB_REUSABLE_Y/2 - PCB_REUSABLE_DRILL_DISTNCE_Y, 0])
            {
                circle(d=PCB_REUSABLE_DRILL_DIAMETER);
            }
        }
    }
}            