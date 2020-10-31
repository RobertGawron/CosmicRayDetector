include <HorizontalRods.scad>;
include <HVGenerator.scad>;
include <HVGeneratorHolder.scad>;
include <GenericGMPCB.scad>;
include <HorizontalPCBHolder.scad>;
include <DisplayHolder.scad>;
include <GMTube.scad>;
include <FPGA.scad>;
include <FPGAHolder.scad>;
include <PCBDimensions.scad>;


MOUNTING_BAR_THICKNESS = 6;
HORIZONTAL_PCB_BAR_THICKNESS = 3 * PCB_GENERIC_GM_DRILL_DIAMETER;

GMTubeBodyLength = 95;
GMTubeConnectorLength = 9;
GMTubeBodyRadius = 5;
GMTubeConnectorRadius = 2;
GMTubeDiameter = 2 * GMTubeBodyRadius;
GeigerTubeLengthTotal = GMTubeBodyLength + GMTubeDiameter;

GMTubesSpacingX = 1.5;
GMTubesSpacingY = 1.5;
GMTubesAmountVertical = 4;
GMTubesAmountHorizontal = 4;

ScrewHeight = 5;

Render_HV_Geiger_Tube_Connector_Offset = ScrewHeight;

Render_HV_Geiger_Tube_Connector_First_Holder_Offset = 
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_GENERIC_GM_DRILL_DISTNCE_Y;

Render_HV_Geiger_Tube_Connector_Second_Holder_Offset =  
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_GENERIC_GM_Y 
    - PCB_GENERIC_GM_DRILL_DISTNCE_Y;

Render_Geiger_Tube_Offset = 
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_GENERIC_GM_Y 
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
    + PCB_GENERIC_GM_DRILL_DISTNCE_X;

Render_DataAcquisitionHolder_Second_Holder_Offset = 
    Render_Data_Acquisition_PCB_Offset 
    + PCB_GENERIC_GM_Y
    + HORIZONTAL_PCB_BAR_THICKNESS
    + PCB_GENERIC_GM_DRILL_DISTNCE_X;

   


ROD_OFFSET_X = PCB_GENERIC_GM_X / 2 - 12;
ROD_OFFSET_Y = (PCB_GENERIC_GM_Z) *4 / 2 + 12; // there are four tubs stacked in y dimmension
ROD_LENGTH = 
    Render_Data_Acquisition_PCB_Offset 
    + PCB_GENERIC_GM_Y 
    + MOUNTING_BAR_THICKNESS 
    + PCB_GENERIC_GM_DRILL_DISTNCE_X 
    + 2*ScrewHeight; // todo

// not mounted inside chassis
Render_HV_Generator_Offset = 
    Render_HV_Geiger_Tube_Connector_Second_Holder_Offset
    -PCB_HV_GEN_Y/2;
 
Render_Display_Offset = 
    Render_DataAcquisitionHolder_First_Holder_Offset
    -MOUNTING_BAR_THICKNESS; 

Render_FPGA_Offset = 
    ROD_LENGTH - PCB_FPGA_X - ScrewHeight;



// magic 
SUPPORT_BAR_OFFSET =  (1.5*PCB_GENERIC_GM_Z) + PCB_THICKNESS;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
UpperDevicesDistanceToRods = 6;

ExternalPCBHolderThickness = 4;
ScrewSupportHeight = 4;

BarMountingScrewOffset = 10;

EXTERNAL_HOLE_OFFSET=12;

MainBoardConnectorX = 2 * EXTERNAL_HOLE_OFFSET +5;
MainBoardConnectorY = 2 * MOUNTING_BAR_THICKNESS;
MainBoardConnectorZ = UpperDevicesDistanceToRods - MOUNTING_BAR_THICKNESS/2;

/*
// Increase steps in render to have quality circles
$fs=0.01;
$fn=100;
*/

module Render_HV_Geiger_Tube_Connector()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_HV_Geiger_Tube_Connector_Offset + PCB_GENERIC_GM_Y/2;
    Z_OFFSET = 0;

    stepZ = GMTubesSpacingY + GMTubeDiameter;
    startZ = -GMTubeBodyRadius;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,180])
        {
            for (offset = [startZ : stepZ : (startZ + stepZ * (GMTubesAmountVertical-1))])
            {
                translate([0, 0, offset - (1.5*PCB_GENERIC_GM_Z)])
                {
                  Generic_GM_PCB();
                }
            }
        }
    }
}

module Render_HV_Geiger_Tube_Connector_First_Holder()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_HV_Geiger_Tube_Connector_First_Holder_Offset + HORIZONTAL_PCB_BAR_THICKNESS/2;
    Z_OFFSET = 0;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_GENERIC_GM_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset,
                                EXTERNAL_HOLE_OFFSET);
        }
    }
}

module Render_HV_Geiger_Tube_Connector_Second_Holder()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_HV_Geiger_Tube_Connector_Second_Holder_Offset + HORIZONTAL_PCB_BAR_THICKNESS/2;
    Z_OFFSET = 0;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_GENERIC_GM_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset,
                                EXTERNAL_HOLE_OFFSET);
        }
    }
}

module Render_Geiger_Tube()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_Geiger_Tube_Offset + GeigerTubeLengthTotal;
    Z_OFFSET = 0;

    stepX = GMTubesSpacingX + GMTubeDiameter;
    startX = -stepX * (GMTubesAmountHorizontal)/2 + GMTubeDiameter/2;

    stepY = GMTubesSpacingY + GMTubeDiameter;
    startY = -stepY * (GMTubesAmountVertical)/2 + GMTubeDiameter/2;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([90,0,0])
        {
            for (offsetX = [startX : stepX : (startX + stepX * (GMTubesAmountHorizontal-1))])
            {
                for (offsetY = [startY : stepY : (startY + stepY * (GMTubesAmountVertical-1))])
                {
                    translate([offsetX, offsetY + (0.5*PCB_GENERIC_GM_Z), 0])
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
    X_OFFSET = 0;
    Y_OFFSET = Render_Data_Acquisition_PCB_Offset + PCB_GENERIC_GM_X/2;
    Z_OFFSET = 0;

    stepZ = GMTubesSpacingY + GMTubeDiameter;
    startZ = -GMTubeBodyRadius;
 
    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,180])
        {
            for (offset = [startZ : stepZ : (startZ + stepZ*3)])
            {
                translate([0, 0, offset - (1.5*PCB_GENERIC_GM_Z)])
                {
                    Generic_GM_PCB();
                }
            }
        }
    }
}

module Render_DataAcquisition_Holder_First_Holder()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_DataAcquisitionHolder_First_Holder_Offset;
    Z_OFFSET = 0;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_GENERIC_GM_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset,
                                EXTERNAL_HOLE_OFFSET);
        }
    }
}

module Render_DataAcquisition_Holder_Second_Holder()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_DataAcquisitionHolder_Second_Holder_Offset;
    Z_OFFSET = 0;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_GENERIC_GM_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset,
                                EXTERNAL_HOLE_OFFSET);
        }
    }
}

module Render_HV_Geiger_Tube_Connector_Mounting_Rods ()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_HV_Geiger_Tube_Connector_Offset + PCB_GENERIC_GM_Y/2;
    Z_OFFSET = -(PCB_GENERIC_GM_Z) * 3 / 2 - 5;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,180])
        {
            HEIGHT = (PCB_GENERIC_GM_Z) * 3 + 8;

            linear_extrude(height = HEIGHT, convexity = 10, twist = 0) 
            {
                translate([-PCB_GENERIC_GM_X/2 + PCB_GENERIC_GM_DRILL_DISTNCE_X, -PCB_GENERIC_GM_Y/2 + PCB_GENERIC_GM_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_GENERIC_GM_DRILL_DIAMETER);
                }
                
                translate([-PCB_GENERIC_GM_X/2 + PCB_GENERIC_GM_DRILL_DISTNCE_X, PCB_GENERIC_GM_Y/2 - PCB_GENERIC_GM_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_GENERIC_GM_DRILL_DIAMETER);
                }

                translate([PCB_GENERIC_GM_X/2 - PCB_GENERIC_GM_DRILL_DISTNCE_X, -PCB_GENERIC_GM_Y/2 + PCB_GENERIC_GM_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_GENERIC_GM_DRILL_DIAMETER);
                }

                translate([PCB_GENERIC_GM_X/2 - PCB_GENERIC_GM_DRILL_DISTNCE_X, PCB_GENERIC_GM_Y/2 - PCB_GENERIC_GM_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_GENERIC_GM_DRILL_DIAMETER);
                }
            }
        }
    }
}

module Render_DataAcquisition_Holder_Mounting_Rods ()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_Data_Acquisition_PCB_Offset + PCB_GENERIC_GM_X/2;
    Z_OFFSET = -(PCB_GENERIC_GM_Z) * 3 / 2 - 5;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            HEIGHT = (PCB_GENERIC_GM_Z) * 3 + 8;
            linear_extrude(height = HEIGHT, convexity = 10, twist = 0) 
            {
                translate([-PCB_GENERIC_GM_Y/2 + PCB_GENERIC_GM_DRILL_DISTNCE_Y, -PCB_GENERIC_GM_X/2 + PCB_GENERIC_GM_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_GENERIC_GM_DRILL_DIAMETER);
                }
                translate([-PCB_GENERIC_GM_Y/2 + PCB_GENERIC_GM_DRILL_DISTNCE_Y, PCB_GENERIC_GM_X/2 - PCB_GENERIC_GM_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_GENERIC_GM_DRILL_DIAMETER);
                }

                translate([PCB_GENERIC_GM_Y/2 - PCB_GENERIC_GM_DRILL_DISTNCE_Y, -PCB_GENERIC_GM_X/2 + PCB_GENERIC_GM_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_GENERIC_GM_DRILL_DIAMETER);
                }

                translate([PCB_GENERIC_GM_Y/2 - PCB_GENERIC_GM_DRILL_DISTNCE_Y, PCB_GENERIC_GM_X/2 - PCB_GENERIC_GM_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_GENERIC_GM_DRILL_DIAMETER);
                }
            }
        }
     }
}

module Render_FPGA()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_FPGA_Offset + PCB_FPGA_X/2;
    Z_OFFSET = ROD_OFFSET_Y + UpperDevicesDistanceToRods + ExternalPCBHolderThickness+ScrewSupportHeight;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0, 0, 90])
        {
            FPGA();
        }
    }
}

module Render_FPGA_Holder_First()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_FPGA_Offset + PCB_FPGA_X/2;
    Z_OFFSET = ROD_OFFSET_Y + UpperDevicesDistanceToRods;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            FPGA_Holder(ExternalPCBHolderThickness, 
                        ScrewSupportHeight, 
                        MainBoardConnectorX,
                        MainBoardConnectorY, 
                        MainBoardConnectorZ);            
        }
    }
} 

module Render_FPGA_Holder_Second_Top()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_FPGA_Offset + PCB_FPGA_X/2 - PCB_FPGA_X + 2*PCB_FPGA_DRILL_DISTNCE_X;
    Z_OFFSET = ROD_OFFSET_Y + UpperDevicesDistanceToRods;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            FPGA_Holder(ExternalPCBHolderThickness, 
                        ScrewSupportHeight, 
                        MainBoardConnectorX, 
                        MainBoardConnectorY,
                        MainBoardConnectorZ);
        }
    }
}

module Render_FPGA_Holder_Second_Bottom()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_FPGA_Offset + MOUNTING_BAR_THICKNESS +MainBoardConnectorX/2 - 2*PCB_FPGA_DRILL_DISTNCE_X;
    Z_OFFSET = 0;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder_Top(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_GENERIC_GM_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET,
                                BarMountingScrewOffset,
                                EXTERNAL_HOLE_OFFSET);
        }
    }
}

module Render_HV_Generator()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_HV_Generator_Offset + PCB_HV_GEN_Y/2;
    Z_OFFSET = ROD_OFFSET_Y + UpperDevicesDistanceToRods + ExternalPCBHolderThickness + ScrewSupportHeight;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        HV_Generator();
    }
}

module Render_HV_Generator_Holder()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_HV_Generator_Offset + PCB_HV_GEN_Y/2;
    Z_OFFSET = ROD_OFFSET_Y + UpperDevicesDistanceToRods;


    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        HV_Generator_Holder(ExternalPCBHolderThickness, 
                        ScrewSupportHeight, 
                        MainBoardConnectorX, 
                        MainBoardConnectorY,
                        MainBoardConnectorZ);
    }
}

module Render_Display()
{
    X_OFFSET = -PCB_GENERIC_GM_Y - ScrewSupportHeight - ExternalPCBHolderThickness;
    Y_OFFSET = Render_Display_Offset;
    Z_OFFSET = 0;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,90,0])
        {
            Generic_GM_PCB();
        }
    }
}

module Render_Display_Holder()
{
    X_OFFSET = -PCB_GENERIC_GM_X/2 - MOUNTING_BAR_THICKNESS/2;
    Y_OFFSET = Render_Display_Offset;
    Z_OFFSET = 0;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([180,90,0])
        {
            Display_Holder(ExternalPCBHolderThickness, 
                        EXTERNAL_HOLE_OFFSET, 
                        ScrewSupportHeight, 
                        ScrewSupportHoleRadius);
        }
    }
}

module Render_Chassis_Main_Rods()
{
    X_OFFSET = 0;
    Y_OFFSET = ROD_LENGTH;
    Z_OFFSET = 0;

    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
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
Render_FPGA_Holder_First(); 
Render_FPGA_Holder_Second_Top(); 
Render_FPGA_Holder_Second_Bottom(); 

Render_Chassis_Main_Rods();         

Render_HV_Generator();
Render_HV_Generator_Holder();

Render_Display();
Render_Display_Holder();

