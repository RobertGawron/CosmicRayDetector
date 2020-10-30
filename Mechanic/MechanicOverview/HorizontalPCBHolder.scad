include <HorizontalRods.scad>;

ScrewSupportHoleRadius = 2;
ScrewSupportHeight = 10;
ScrewSupportWidth = 3;

// it's symetrical, so can be mirrored, saves lines of code
module Horizontal_PCB_Holder_Half_Part(ROD_OFFSET_X, 
                            ROD_OFFSET_Y, 
                            PCB_Y_LEN, 
                            MOUNTING_BAR_THICKNESS, 
                            HV_PCB_CONNECTOR_BAR_THICKNESS,
                            SUPPORT_BAR_OFFSET,
                            BarMountingScrewOffset)
{
    BAR_THICKNESS = MOUNTING_BAR_THICKNESS / 2;
    BREAK_POINT = 22;

    difference()
    {    
        linear_extrude(height = HV_PCB_CONNECTOR_BAR_THICKNESS, convexity = 10, twist = 0)
        {
            difference()
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
                            [-PCB_Y_LEN/2 - BAR_THICKNESS, BREAK_POINT+BAR_THICKNESS/2],
                            [-PCB_Y_LEN/2 - BAR_THICKNESS, -BREAK_POINT-BAR_THICKNESS/2],

                        ] );

                    Horizontal_Rods_Mountings(ROD_OFFSET_X, ROD_OFFSET_Y);

                    // top bottom supports
                    translate([ -ROD_OFFSET_X, ROD_OFFSET_Y, 0 ])
                    {
                        square([ROD_OFFSET_X, ScrewSupportWidth]);
                    }
                    
                    translate([ -ROD_OFFSET_X, -ROD_OFFSET_Y, 0 ])
                    {
                        square([ROD_OFFSET_X, ScrewSupportWidth]);
                    }


                    //pcb support
                    translate([-PCB_Y_LEN/2, SUPPORT_BAR_OFFSET - ScrewSupportWidth/2, 0])
                    {
                        square([ScrewSupportHeight, ScrewSupportWidth]);
                    }    
                }

                Horizontal_Rods_Inner_Holes (ROD_OFFSET_X, ROD_OFFSET_Y);
            }
        }
    
      //  union(){
        rotate([90, 0, 0])
        {
            // hole for mounting pcb's screw
            linear_extrude(height = ROD_OFFSET_Y, convexity = 10, twist = 0)
            {
                translate([-PCB_Y_LEN/2 + ScrewSupportHeight/2, HV_PCB_CONNECTOR_BAR_THICKNESS/2,30])
                {
                    circle(r=ScrewSupportHoleRadius);       
                }                  
            }

            // hole for mounting hv genertor,, fpga, display   
            translate([0,0,-ROD_OFFSET_Y-MOUNTING_BAR_THICKNESS])
            {
                linear_extrude(height = 2*(ROD_OFFSET_Y+MOUNTING_BAR_THICKNESS), convexity = 10, twist = 0)
                {
                    translate([BarMountingScrewOffset, HV_PCB_CONNECTOR_BAR_THICKNESS/2,0])
                    {
                        circle(r=ScrewSupportHoleRadius);       
                    }                  
                }
            }//}

                rotate([0,90,0])        // hole for mounting hv genertor,, fpga, display   
            translate([0,0,-ROD_OFFSET_Y-MOUNTING_BAR_THICKNESS])
            {
                linear_extrude(height = 2*(ROD_OFFSET_Y+MOUNTING_BAR_THICKNESS), convexity = 10, twist = 0)
                {
                    translate([BarMountingScrewOffset, HV_PCB_CONNECTOR_BAR_THICKNESS/2,0])
                    {
                        circle(r=ScrewSupportHoleRadius);       
                    }                  
                }
            }//}
        }
    } 
}

module Horizontal_PCB_Holder(ROD_OFFSET_X, 
                            ROD_OFFSET_Y, 
                            PCB_Y_LEN, 
                            MOUNTING_BAR_THICKNESS, 
                            HV_PCB_CONNECTOR_BAR_THICKNESS,
                            SUPPORT_BAR_OFFSET,
                            BarMountingScrewOffset) 
{
    Horizontal_PCB_Holder_Half_Part(ROD_OFFSET_X, 
                        ROD_OFFSET_Y, 
                        PCB_Y_LEN, 
                        MOUNTING_BAR_THICKNESS, 
                        HV_PCB_CONNECTOR_BAR_THICKNESS,
                        SUPPORT_BAR_OFFSET,
                        BarMountingScrewOffset);

    translate([0,0,HORIZONTAL_PCB_BAR_THICKNESS])
    {
        rotate([0, 180, 0])
        {
            Horizontal_PCB_Holder_Half_Part(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_Y_LEN, 
                                MOUNTING_BAR_THICKNESS, 
                                HV_PCB_CONNECTOR_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset);
        }
    }
}
