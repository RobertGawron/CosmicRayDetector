include <HorizontalRods.scad>;
ScrewSupportHoleRadius = PCB_GENERIC_GM_DRILL_DIAMETER/2;

module Horizontal_PCB_Holder(ROD_OFFSET_X, 
                            ROD_OFFSET_Y, 
                            PCB_Y_LEN, 
                            MOUNTING_BAR_THICKNESS, 
                            HV_PCB_CONNECTOR_BAR_THICKNESS,
                            SUPPORT_BAR_OFFSET,
                            BarMountingScrewOffset,
                            EXTERNAL_OFFSET) 
{
    Horizontal_PCB_Holder_Half_Part(ROD_OFFSET_X, 
                        ROD_OFFSET_Y, 
                        PCB_Y_LEN, 
                        MOUNTING_BAR_THICKNESS, 
                        HV_PCB_CONNECTOR_BAR_THICKNESS,
                        SUPPORT_BAR_OFFSET,
                        BarMountingScrewOffset,
                        EXTERNAL_OFFSET);

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
                                BarMountingScrewOffset,
                                EXTERNAL_OFFSET);
        }
    }

    BAR_THICKNESS = MOUNTING_BAR_THICKNESS / 2;

    PCBSupportHoleRadius = PCB_GENERIC_GM_DRILL_DIAMETER;
    PCBSupportHeight = 2 * PCB_GENERIC_GM_DRILL_DISTNCE_X;
    PCBSupportWidth = MOUNTING_BAR_THICKNESS/2;



    difference()
    {
        //pcb support
        linear_extrude(height = HV_PCB_CONNECTOR_BAR_THICKNESS, convexity = 10, twist = 0)
        {
            translate([-PCB_Y_LEN/2, SUPPORT_BAR_OFFSET, 0])
            
            {
                square([PCBSupportHeight, PCBSupportWidth]);

            }
            translate([PCB_Y_LEN/2 -PCBSupportHeight, SUPPORT_BAR_OFFSET, 0])
            
            {
                square([PCBSupportHeight, PCBSupportWidth]);

            }      
        } 

        rotate([90, 0, 0])
        {
            // hole for mounting pcb's screws
            translate([PCB_Y_LEN/2 - PCB_GENERIC_GM_DRILL_DISTNCE_X, HV_PCB_CONNECTOR_BAR_THICKNESS/2, -ROD_OFFSET_Y+SUPPORT_BAR_OFFSET-HV_PCB_CONNECTOR_BAR_THICKNESS/2]) // todo          
            {
                linear_extrude(height = 2*ROD_OFFSET_Y, convexity = 10, twist = 0)
                {
                    circle(r=ScrewSupportHoleRadius);       
                }   
                            
            }

            // hole for mounting pcb's screws
            translate([-PCB_Y_LEN/2 + PCB_GENERIC_GM_DRILL_DISTNCE_X, HV_PCB_CONNECTOR_BAR_THICKNESS/2, -ROD_OFFSET_Y+SUPPORT_BAR_OFFSET-HV_PCB_CONNECTOR_BAR_THICKNESS/2]) // todo          
            {
                linear_extrude(height = 2*ROD_OFFSET_Y, convexity = 10, twist = 0)
                {
                    circle(r=ScrewSupportHoleRadius);       
                }   
                            
            }
        }
    }
}

// hack
module Horizontal_PCB_Holder_Top(ROD_OFFSET_X, 
                            ROD_OFFSET_Y, 
                            PCB_Y_LEN, 
                            MOUNTING_BAR_THICKNESS, 
                            HV_PCB_CONNECTOR_BAR_THICKNESS,
                            SUPPORT_BAR_OFFSET,
                            BarMountingScrewOffset,
                            EXTERNAL_OFFSET) 
{
    BAR_THICKNESS = MOUNTING_BAR_THICKNESS / 2;

    linear_extrude(height = HV_PCB_CONNECTOR_BAR_THICKNESS, convexity = 10, twist = 0)
    {
        difference()
        {
            Horizontal_Rods_Mountings_Top(ROD_OFFSET_X, ROD_OFFSET_Y);
            Horizontal_Rods_Inner_Holes_Top(ROD_OFFSET_X, ROD_OFFSET_Y);
        }

        // top support
        translate([ -ROD_OFFSET_X, ROD_OFFSET_Y - BAR_THICKNESS/2, 0 ])
        {
            square([ROD_OFFSET_X, BAR_THICKNESS]);
        }
    }
}

// it's symetrical, so can be mirrored, saves lines of code
module Horizontal_PCB_Holder_Quarter_Part(ROD_OFFSET_X, 
                            ROD_OFFSET_Y, 
                            PCB_Y_LEN, 
                            MOUNTING_BAR_THICKNESS, 
                            HV_PCB_CONNECTOR_BAR_THICKNESS,
                            SUPPORT_BAR_OFFSET,
                            BarMountingScrewOffset,
                            EXTERNAL_OFFSET)
{
    BAR_THICKNESS = MOUNTING_BAR_THICKNESS / 2;

    PCBSupportHoleRadius = PCB_GENERIC_GM_DRILL_DIAMETER;
    PCBSupportHeight = 2 * PCB_GENERIC_GM_DRILL_DISTNCE_X;
    PCBSupportWidth = MOUNTING_BAR_THICKNESS/2;

    HolderRadius = 4 * (PCB_Y_LEN/2 - ROD_OFFSET_Y);

    difference()
    {    
        linear_extrude(height = HV_PCB_CONNECTOR_BAR_THICKNESS, convexity = 10, twist = 0)
        {
            difference()
            {
                union() 
                {
                    Horizontal_Rods_Mountings(ROD_OFFSET_X, ROD_OFFSET_Y);

                    translate([-PCB_Y_LEN/2 + HolderRadius, ROD_OFFSET_Y - HolderRadius - BAR_THICKNESS/2, 0])
                    {
                        difference()
                        {
                            OuterRadius = HolderRadius + BAR_THICKNESS;

                            circle(OuterRadius);
                            circle(HolderRadius);

                            // remove bottom part of ring
                            translate([-OuterRadius, -OuterRadius, 0])
                            {
                                square([2*OuterRadius, OuterRadius]);
                            }
                            // remove left part of ring
                            square([OuterRadius, OuterRadius]);
                        }
                    }

                    // left support (hehe :D )
                    translate([ - PCB_Y_LEN/2 - BAR_THICKNESS , 0 ,0])
                    {
                        square([BAR_THICKNESS, ROD_OFFSET_Y - HolderRadius]);
                    }


                    // top support
                    translate([ -ROD_OFFSET_X, ROD_OFFSET_Y - BAR_THICKNESS/2, 0 ])
                    {
                        square([ROD_OFFSET_X, BAR_THICKNESS]);
                    }
                }

                Horizontal_Rods_Inner_Holes (ROD_OFFSET_X, ROD_OFFSET_Y);
            }
        }

        rotate([90, 0, 0])
        {
            rotate([0,90,0])   
            {
                translate([0,0,-ROD_OFFSET_Y-MOUNTING_BAR_THICKNESS])
                {
                    Horizontal_PCB_Holder_External_Holes(ROD_OFFSET_Y, 
                                                    EXTERNAL_OFFSET, 
                                                    MOUNTING_BAR_THICKNESS, 
                                                    HV_PCB_CONNECTOR_BAR_THICKNESS, 
                                                    ScrewSupportHoleRadius);
                }
            }

            rotate([0,180,0])
            {
                translate([0,0,-ROD_OFFSET_Y-MOUNTING_BAR_THICKNESS])
                {
                    Horizontal_PCB_Holder_External_Holes(ROD_OFFSET_Y, 
                                                    EXTERNAL_OFFSET, 
                                                    MOUNTING_BAR_THICKNESS, 
                                                    HV_PCB_CONNECTOR_BAR_THICKNESS, 
                                                    ScrewSupportHoleRadius);
                }
            }
        }
    }
}

// it's symetrical, so can be mirrored, saves lines of code
module Horizontal_PCB_Holder_Half_Part(ROD_OFFSET_X, 
                            ROD_OFFSET_Y, 
                            PCB_Y_LEN, 
                            MOUNTING_BAR_THICKNESS, 
                            HV_PCB_CONNECTOR_BAR_THICKNESS,
                            SUPPORT_BAR_OFFSET,
                            BarMountingScrewOffset,
                            EXTERNAL_OFFSET)
{
    Horizontal_PCB_Holder_Quarter_Part(ROD_OFFSET_X, 
                            ROD_OFFSET_Y, 
                            PCB_Y_LEN, 
                            MOUNTING_BAR_THICKNESS, 
                            HV_PCB_CONNECTOR_BAR_THICKNESS,
                            SUPPORT_BAR_OFFSET,
                            BarMountingScrewOffset,
                            EXTERNAL_OFFSET);
    
     
    PCBSupportHeight = 2 * PCB_GENERIC_GM_DRILL_DISTNCE_X;
    PCBSupportWidth = MOUNTING_BAR_THICKNESS/2;

    translate([0,0,HORIZONTAL_PCB_BAR_THICKNESS])
    {
        rotate([180, 0, 0])
        {
            Horizontal_PCB_Holder_Quarter_Part(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_Y_LEN, 
                                MOUNTING_BAR_THICKNESS, 
                                HV_PCB_CONNECTOR_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset,
                                EXTERNAL_OFFSET);
        }
    }
}

// holes to mount external PCBs (fpga, display, hv generator)
module Horizontal_PCB_Holder_External_Holes(ROD_OFFSET_Y,
                                        EXTERNAL_OFFSET, 
                                        MOUNTING_BAR_THICKNESS, 
                                        HV_PCB_CONNECTOR_BAR_THICKNESS, 
                                        ScrewSupportHoleRadius)
{
    linear_extrude(height = 2*(ROD_OFFSET_Y+MOUNTING_BAR_THICKNESS), convexity = 10, twist = 0)
    {
        translate([EXTERNAL_OFFSET, HV_PCB_CONNECTOR_BAR_THICKNESS/2,0])
        {
            circle(r=ScrewSupportHoleRadius);       
        }  
        translate([-EXTERNAL_OFFSET, HV_PCB_CONNECTOR_BAR_THICKNESS/2,0])
        {
            circle(r=ScrewSupportHoleRadius);       
        }                  
    }
}
