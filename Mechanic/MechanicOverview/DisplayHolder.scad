include <PCBDimensions.scad>;

module Circles_Around_Mounting_Holes(diameter)
{
    translate([PCB_HV_GEN_X/2 -PCB_HV_GEN_DRILL_DISTNCE_X, PCB_HV_GEN_Y/2 - PCB_HV_GEN_DRILL_DISTNCE_Y, 0])
    {
        circle(d=diameter);
    }

    translate([-PCB_HV_GEN_X/2 +PCB_HV_GEN_DRILL_DISTNCE_X, PCB_HV_GEN_Y/2 - PCB_HV_GEN_DRILL_DISTNCE_Y, 0])
    {
        circle(d=diameter);
    }

    translate([PCB_HV_GEN_X/2 -PCB_HV_GEN_DRILL_DISTNCE_X, - PCB_HV_GEN_Y/2 + PCB_HV_GEN_DRILL_DISTNCE_Y, 0])
    {
        circle(d=diameter);
    }

    translate([-PCB_HV_GEN_X/2 +PCB_HV_GEN_DRILL_DISTNCE_X, - PCB_HV_GEN_Y/2 + PCB_HV_GEN_DRILL_DISTNCE_Y, 0])
    {
        circle(d=diameter);
    }
}

module Display_Holder(BarHeight, ScrewSupportHeight)
{
    difference()
    {
        union()
        {
            linear_extrude(height = ScrewSupportHeight, convexity = 10, twist = 0) 
            {
                Circles_Around_Mounting_Holes(2*PCB_HV_GEN_DRILL_DIAMETER);
            }

            linear_extrude(height = BarHeight, convexity = 10, twist = 0)
            {
                square([PCB_HV_GEN_X, PCB_HV_GEN_Y], center=true);
            }
        }

        linear_extrude(height = ScrewSupportHeight, convexity = 10, twist = 0) 
        {
            Circles_Around_Mounting_Holes(PCB_HV_GEN_DRILL_DIAMETER);
        }
    }
}