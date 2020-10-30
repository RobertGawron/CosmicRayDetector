include <HorizontalRods.scad>;

include <HVGenerator.scad>;
include <HVGeneratorHolder.scad>;

include <ReusableGMPCB.scad>;
include <HorizontalPCBHolder.scad>;
include <DisplayHolder.scad>;

include <GMTube.scad>;
include <FPGA.scad>;



include <PCBDimensions.scad>;


MOUNTING_BAR_THICKNESS = 6;
HORIZONTAL_PCB_BAR_THICKNESS = 3 * PCB_REUSABLE_DRILL_DIAMETER;

GMTubeBodyLength = 95;
GMTubeConnectorLength = 9;
GMTubeBodyRadius = 5;
GMTubeConnectorRadius = 2;

ScrewHeight = 5;

Render_HV_Geiger_Tube_Connector_Offset = ScrewHeight;

Render_HV_Geiger_Tube_Connector_First_Holder_Offset = 
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_REUSABLE_DRILL_DISTNCE_Y;

Render_HV_Geiger_Tube_Connector_Second_Holder_Offset =  
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_REUSABLE_Y 
    - PCB_REUSABLE_DRILL_DISTNCE_Y;

Render_Geiger_Tube_Offset = 
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_REUSABLE_Y 
    - GMTubeConnectorLength
    + 2; // add a bit of space so that connector doesn't push on GM tube's body

Render_Data_Acquisition_PCB_Offset = 
    Render_Geiger_Tube_Offset 
    + GMTubeBodyLength 
    - GMTubeConnectorLength
    + 4; // add a bit of space so that connector doesn't push on GM tube's body

Render_DataAcquisitionHolder_First_Holder_Offset = 
    Render_Data_Acquisition_PCB_Offset 
    + 2*HORIZONTAL_PCB_BAR_THICKNESS
    + PCB_REUSABLE_DRILL_DISTNCE_X;

Render_DataAcquisitionHolder_Second_Holder_Offset = 
    Render_Data_Acquisition_PCB_Offset 
    + PCB_REUSABLE_Y
    + HORIZONTAL_PCB_BAR_THICKNESS
    + PCB_REUSABLE_DRILL_DISTNCE_X;


    


ROD_OFFSET_X = PCB_REUSABLE_X / 2 - 12;
ROD_OFFSET_Y = (PCB_REUSABLE_Z) *4 / 2 + 10; // there are four tubs stacked in y dimmension
ROD_LENGTH = 
    Render_Data_Acquisition_PCB_Offset 
    + PCB_REUSABLE_Y 
    + MOUNTING_BAR_THICKNESS 
    + PCB_REUSABLE_DRILL_DISTNCE_X 
    + 2*ScrewHeight; // todo


Render_FPGA_Offset = 
    ROD_LENGTH - PCB_FPGA_X - ScrewHeight;

SUPPORT_BAR_OFFSET = - (1.5*PCB_REUSABLE_Z) -PCB_THICKNESS;



Render_HV_Generator_Offset = 
    Render_HV_Geiger_Tube_Connector_Second_Holder_Offset
    -PCB_HV_GEN_Y/2;
 
Render_Display_Offset = Render_DataAcquisitionHolder_First_Holder_Offset-MOUNTING_BAR_THICKNESS;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
UpperDevicesDistanceToRods = 6;

BarHeight = 2;
ScrewSupportHeight = 6;

BarMountingScrewOffset = 10;

module Render_HV_Geiger_Tube_Connector()
{
    translate([0, (Render_HV_Geiger_Tube_Connector_Offset + PCB_REUSABLE_Y/2), 0])
    {
        rotate([0,0,180])
        {
            for (offset = [0:10:30])
            {
                translate([0, 0, offset - (1.5*PCB_REUSABLE_Z)])
                {
                  Reusable_GM_PCB();
                }
            }
        }
    }
}

module Render_HV_Geiger_Tube_Connector_First_Holder()
{
    translate([0, Render_HV_Geiger_Tube_Connector_First_Holder_Offset + HORIZONTAL_PCB_BAR_THICKNESS/2, 0])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_REUSABLE_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset);
        }
    }
}

module Render_HV_Geiger_Tube_Connector_Second_Holder()
{
    translate([0, Render_HV_Geiger_Tube_Connector_Second_Holder_Offset + HORIZONTAL_PCB_BAR_THICKNESS/2, 0])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_REUSABLE_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset);
        }
    }
}

module Render_Geiger_Tube()
{
    GeigerTubeLengthTotal = GMTubeBodyLength + 2 * GMTubeConnectorLength;
    translate([0, Render_Geiger_Tube_Offset + GeigerTubeLengthTotal, 0])
    {
        rotate([90,0,0])
        {
            for (offsetX = [-15:10:15])
            {
                for (offsetY = [-15:10:15])
                {
                    translate([offsetX, offsetY + (0.5*PCB_REUSABLE_Z), 0])
                    {
                        Geiger_Tube(GMTubeBodyLength,
                                GMTubeConnectorLength,
                                GMTubeBodyRadius,
                                GMTubeConnectorRadius);
                    }     
                }     
            }   
        }
    }
}

module Render_Data_Acquisition_PCB()
{
    translate([0, Render_Data_Acquisition_PCB_Offset + PCB_REUSABLE_X/2, 0])
    {
        rotate([0,0,180])
        {
            for (offset = [0:10:30])
            {
                translate([0, 0, offset - (1.5*PCB_REUSABLE_Z)])
                {
                    Reusable_GM_PCB();
                }
            }
        }
    }
}

module Render_DataAcquisition_Holder_First_Holder()
{
    translate([0,Render_DataAcquisitionHolder_First_Holder_Offset, 0])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_REUSABLE_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset);
        }
    }
}

module Render_DataAcquisition_Holder_Second_Holder()
{
    translate([0,Render_DataAcquisitionHolder_Second_Holder_Offset, 0])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_REUSABLE_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset);
        }
    }
}

module Render_HV_Geiger_Tube_Connector_Mounting_Rods ()
{
    Y_OFFSET = Render_HV_Geiger_Tube_Connector_Offset + PCB_REUSABLE_Y/2;
    Z_OFFSET = -(PCB_REUSABLE_Z) * 3 / 2 - 5;
    translate([0, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,180])
        {
            HEIGHT = (PCB_REUSABLE_Z) * 3 + 8;

            linear_extrude(height = HEIGHT, convexity = 10, twist = 0) 
            {
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
}

module Render_DataAcquisition_Holder_Mounting_Rods ()
{
    Y_OFFSET = Render_Data_Acquisition_PCB_Offset + PCB_REUSABLE_X/2;
    Z_OFFSET = -(PCB_REUSABLE_Z) * 3 / 2 - 5;
    translate([0, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            HEIGHT = (PCB_REUSABLE_Z) * 3 + 8;
            linear_extrude(height = HEIGHT, convexity = 10, twist = 0) 
            {
                translate([-PCB_REUSABLE_Y/2 + PCB_REUSABLE_DRILL_DISTNCE_Y, -PCB_REUSABLE_X/2 + PCB_REUSABLE_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_REUSABLE_DRILL_DIAMETER);
                }
                translate([-PCB_REUSABLE_Y/2 + PCB_REUSABLE_DRILL_DISTNCE_Y, PCB_REUSABLE_X/2 - PCB_REUSABLE_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_REUSABLE_DRILL_DIAMETER);
                }

                translate([PCB_REUSABLE_Y/2 - PCB_REUSABLE_DRILL_DISTNCE_Y, -PCB_REUSABLE_X/2 + PCB_REUSABLE_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_REUSABLE_DRILL_DIAMETER);
                }

                translate([PCB_REUSABLE_Y/2 - PCB_REUSABLE_DRILL_DISTNCE_Y, PCB_REUSABLE_X/2 - PCB_REUSABLE_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_REUSABLE_DRILL_DIAMETER);
                }
            }
        }
     }
}

module Render_FPGA()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_FPGA_Offset + PCB_FPGA_X/2;
    Z_OFFSET = ROD_OFFSET_Y + UpperDevicesDistanceToRods;
    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            FPGA();
        }
    }
}

module Render_FPGA_Holder_First_Holder()
{
    translate([0, Render_FPGA_First_Holder_Offset + HORIZONTAL_PCB_BAR_THICKNESS/2, 0])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_REUSABLE_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset);
        }
    }
} 

module Render_FPGA_Holder_Second_Holder()
{
    translate([0, Render_FPGA_Second_Holder_Offset + HORIZONTAL_PCB_BAR_THICKNESS/2, 0])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_REUSABLE_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset);
        }
    }
}

module Render_FPGA_Holder_Mounting_Rods()
{
    Y_OFFSET = Render_FPGA_Offset + PCB_FPGA_X / 2;
    Z_OFFSET = -(PCB_REUSABLE_Z) * 3 / 2 - 10;
    translate([0, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            HEIGHT = -Z_OFFSET + 4;

            linear_extrude(height = HEIGHT, convexity = 10, twist = 0) 
            {
                translate([-PCB_FPGA_X/2 + PCB_FPGA_DRILL_DISTNCE_X, -PCB_FPGA_Y/2 + PCB_FPGA_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_FPGA_DRILL_DIAMETER);
                }
                
                translate([-PCB_FPGA_X/2 + PCB_FPGA_DRILL_DISTNCE_X, PCB_FPGA_Y/2 - PCB_FPGA_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_FPGA_DRILL_DIAMETER);
                }

                translate([PCB_FPGA_X/2 - PCB_FPGA_DRILL_DISTNCE_X, -PCB_FPGA_Y/2 + PCB_FPGA_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_FPGA_DRILL_DIAMETER);
                }

                translate([PCB_FPGA_X/2 - PCB_FPGA_DRILL_DISTNCE_X, PCB_FPGA_Y/2 - PCB_FPGA_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_FPGA_DRILL_DIAMETER);
                }
            }
        }
    }
}

module Render_HV_Generator()
{
    translate([0, (Render_HV_Generator_Offset + PCB_HV_GEN_Y/2), ROD_OFFSET_Y + UpperDevicesDistanceToRods +  ScrewSupportHeight])
    {
        HV_Generator();
    }
}


module Render_HV_Generator_Holder()
{
    translate([0, (Render_HV_Generator_Offset + PCB_HV_GEN_Y/2), ROD_OFFSET_Y + UpperDevicesDistanceToRods])
    {
        HV_Generator_Holder(BarHeight, ScrewSupportHeight);
    }
}

module Render_Display()
{
    
    translate([-PCB_REUSABLE_Y, Render_Display_Offset, 0])
    {
        rotate([0,90,0])
        {
            Reusable_GM_PCB();
        }
    }
}

module Render_Display_Holder()
{
    
    translate([-PCB_REUSABLE_Y, Render_Display_Offset, 0])
    {
        rotate([0,90,0])
        {
            Display_Holder(3, 3);
        }
    }
}



module Render_Chassis_Main_Rods()
{
    translate([0,ROD_LENGTH,0])
    {
        rotate([90,0,0])
        {
            Horizontal_Rods(ROD_OFFSET_X, ROD_OFFSET_Y, ROD_LENGTH);
        }
    }
}





Render_HV_Geiger_Tube_Connector();
Render_HV_Geiger_Tube_Connector_First_Holder(); 
Render_HV_Geiger_Tube_Connector_Second_Holder();
Render_HV_Geiger_Tube_Connector_Mounting_Rods();

Render_Geiger_Tube();

Render_Data_Acquisition_PCB();  
Render_DataAcquisition_Holder_First_Holder(); 
Render_DataAcquisition_Holder_Second_Holder(); 

Render_DataAcquisition_Holder_Mounting_Rods(); 

Render_FPGA();
//Render_FPGA_Holder_First_Holder(); 
//Render_FPGA_Holder_Second_Holder(); 
//Render_FPGA_Holder_Mounting_Rods(); 

Render_Chassis_Main_Rods();         

Render_HV_Generator();
Render_HV_Generator_Holder();

Render_Display();
Render_Display_Holder();

