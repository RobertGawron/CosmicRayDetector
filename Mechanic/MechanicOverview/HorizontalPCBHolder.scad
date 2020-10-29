include <HorizontalRods.scad>;

ScrewSupportHoleRadius = 2;
ScrewSupportHeight = 10;
ScrewSupportWidth = 1;

module Horizontal_PCB_Holder(ROD_OFFSET_X, 
                            ROD_OFFSET_Y, 
                            PCB_Y_LEN, 
                            MOUNTING_BAR_THICKNESS, 
                            HV_PCB_CONNECTOR_BAR_THICKNESS,
                            SUPPORT_BAR_OFFSET) 
{
    BAR_THICKNESS = MOUNTING_BAR_THICKNESS / 2;
    BREAK_POINT = 20;
    difference()
    {
        linear_extrude(height = HV_PCB_CONNECTOR_BAR_THICKNESS, convexity = 10, twist = 0)
        {
            union()
            {
                polygon (points= [
                        [-ROD_OFFSET_X - BAR_THICKNESS, -ROD_OFFSET_Y],
                        [-ROD_OFFSET_X + BAR_THICKNESS, -ROD_OFFSET_Y],
                        [-PCB_Y_LEN/2, -BREAK_POINT],
                        [-PCB_Y_LEN/2, BREAK_POINT],
                        [-ROD_OFFSET_X + BAR_THICKNESS, ROD_OFFSET_Y],
                        [-ROD_OFFSET_X - BAR_THICKNESS, ROD_OFFSET_Y],
                        [-PCB_Y_LEN/2 - 2*BAR_THICKNESS, BREAK_POINT],
                        [-PCB_Y_LEN/2 - 2*BAR_THICKNESS, -BREAK_POINT],

                    ] );

                    polygon (points= [
                        [ROD_OFFSET_X + BAR_THICKNESS, -ROD_OFFSET_Y],
                        [ROD_OFFSET_X - BAR_THICKNESS, -ROD_OFFSET_Y],
                        [PCB_Y_LEN/2, -BREAK_POINT],
                        [PCB_Y_LEN/2, BREAK_POINT],
                        [ROD_OFFSET_X - BAR_THICKNESS, ROD_OFFSET_Y],
                        [ROD_OFFSET_X + BAR_THICKNESS, ROD_OFFSET_Y],
                        [PCB_Y_LEN/2 + 2*BAR_THICKNESS, BREAK_POINT],
                        [PCB_Y_LEN/2 + 2*BAR_THICKNESS, -BREAK_POINT],

                    ] );   

                    Horizontal_Rods_Mountings(ROD_OFFSET_X, ROD_OFFSET_Y);   


                    translate([ + PCB_Y_LEN/2 - ScrewSupportHeight, SUPPORT_BAR_OFFSET, 0])
                    {
                        square([ScrewSupportHeight, ScrewSupportWidth]);
                    }

                    translate([ - PCB_Y_LEN/2, SUPPORT_BAR_OFFSET, 0])
                    {
                        square([ScrewSupportHeight, ScrewSupportWidth]);
                    }                 
            }
        }

        rotate([90, 0, 0])
        {
            linear_extrude(height = ROD_OFFSET_Y, convexity = 10, twist = 0)
            {
                translate([PCB_Y_LEN/2 - ScrewSupportHeight/2, MOUNTING_BAR_THICKNESS,30])
                {
                    circle(r=ScrewSupportHoleRadius);       
                }
                translate([-PCB_Y_LEN/2 + ScrewSupportHeight/2, MOUNTING_BAR_THICKNESS,30])
                {
                    circle(r=ScrewSupportHoleRadius);       
                }                  
            }
        }
    }
}

