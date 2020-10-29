include <HorizontalRods.scad>;
include <HVGeneratorHolder.scad>;
include <HorizontalPCBHolder.scad>;
include <DataAcquisitionHolder.scad>;
include <GMTube.scad>;
include <PCBDimensions.scad>;

MOUNTING_BAR_THICKNESS = 5;

GMTubeBodyLength = 95;
GMTubeConnectorLength = 9;
GMTubeBodyRadius = 5;
GMTubeConnectorRadius = 2;

ScrewHeight = 5;

Render_HV_Generator_Shield_Offset = ScrewHeight;

Render_HV_Generator_Holder_Offset = Render_HV_Generator_Shield_Offset + PCB_HV_GEN_Z;
Render_HV_Generator_PCB_Offset = Render_HV_Generator_Holder_Offset - MOUNTING_BAR_THICKNESS;
Render_HV_Geiger_Tube_Connector_Offset = Render_HV_Generator_Holder_Offset + 10; // a bit space so that PCBs doesn't touch

Render_HV_Geiger_Tube_Connector_First_Holder_Offset = 
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_HV_CONNECTOR_DRILL_DISTNCE_Y;

Render_HV_Geiger_Tube_Connector_Second_Holder_Offset =  
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_HV_CONNECTOR_Y 
    - PCB_HV_CONNECTOR_DRILL_DISTNCE_Y;

Render_Geiger_Tube_Offset = 
    Render_HV_Geiger_Tube_Connector_Offset 
    + PCB_HV_CONNECTOR_Y 
    - GMTubeConnectorLength
    + 2; // add a bit of space so that connector doesn't push on GM tube's body

Render_Data_Acquisition_PCB_Offset = 
    Render_Geiger_Tube_Offset 
    + GMTubeBodyLength 
    + GMTubeConnectorLength
    + 2; // add a bit of space so that connector doesn't push on GM tube's body

Render_DataAcquisitionHolder_First_Holder_Offset = 
    Render_Data_Acquisition_PCB_Offset 
    + PCB_ACQUISITION_X
    - PCB_ACQUISITION_DRILL_DISTNCE_X;

Render_DataAcquisitionHolder_Second_Holder_Offset = 
    Render_Data_Acquisition_PCB_Offset 
    + PCB_ACQUISITION_DRILL_DISTNCE_X;

Render_FPGA_Offset = Render_Data_Acquisition_PCB_Offset + PCB_ACQUISITION_X + 20;

Render_FPGA_First_Holder_Offset =
    Render_FPGA_Offset 
    + PCB_FPGA_X
    - PCB_FPGA_DRILL_DISTNCE_X;

Render_FPGA_Second_Holder_Offset = 
    Render_FPGA_Offset 
    + PCB_FPGA_DRILL_DISTNCE_X;

ROD_OFFSET_X = PCB_ACQUISITION_Y / 2 + 5;
ROD_OFFSET_Y = (PCB_HV_GEN_X) / 2 + 5;
ROD_LENGTH = Render_FPGA_Offset + PCB_FPGA_X + ScrewHeight;



HORIZONTAL_PCB_BAR_THICKNESS = 3 * PCB_HV_CONNECTOR_DRILL_DIMMENSION;
SUPPORT_BAR_OFFSET = - (1.5*PCB_ACQUISITION_Z) -PCB_THICKNESS;


module Render_HV_Generator_Shield()
{
    translate([0,Render_HV_Generator_Shield_Offset,0])
    {
        rotate([90,0,0])
        {
            HV_Generator_Shield(ROD_OFFSET_X, ROD_OFFSET_Y, MOUNTING_BAR_THICKNESS);
        }
    }
}

module Render_HV_Generator_PCB_Holder()
{
    translate([0, Render_HV_Generator_Holder_Offset, 0])
    {
        rotate([90,0,0])
        {
            HV_Generator_Holder(PCB_HV_GEN_X, 
                                PCB_HV_GEN_Y, 
                                ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                MOUNTING_BAR_THICKNESS);
        }
    }
}

module Render_HV_Generator_PCB()
{
    translate([0, Render_HV_Generator_PCB_Offset, 0])
    {
        rotate([90,0,0])
        {
            linear_extrude(height = PCB_THICKNESS, convexity = 10, twist = 0)
            {
                square([PCB_HV_GEN_X, PCB_HV_GEN_Y], center=true);
            }      
        } 
    }
}

module Render_HV_Geiger_Tube_Connector()
{
    translate([0, (Render_HV_Geiger_Tube_Connector_Offset + PCB_HV_CONNECTOR_Y/2), 0])
    {
        rotate([0,0,180])
        {
            for (offset = [0:10:30])
            {
                translate([0, 0, offset - (1.5*PCB_ACQUISITION_Z)])
                {
                    linear_extrude(height = PCB_THICKNESS, convexity = 10, twist = 0) 
                    {
                        difference()
                        {
                            square([PCB_HV_CONNECTOR_X, PCB_HV_CONNECTOR_Y], center=true);

                            translate([-PCB_HV_CONNECTOR_X/2 + PCB_HV_CONNECTOR_DRILL_DISTNCE_X, -PCB_HV_CONNECTOR_Y/2 + PCB_HV_CONNECTOR_DRILL_DISTNCE_Y, 0])
                            {
                                circle(d=PCB_HV_CONNECTOR_DRILL_DIMMENSION);
                            }
                            
                            translate([-PCB_HV_CONNECTOR_X/2 + PCB_HV_CONNECTOR_DRILL_DISTNCE_X, PCB_HV_CONNECTOR_Y/2 - PCB_HV_CONNECTOR_DRILL_DISTNCE_Y, 0])
                            {
                                circle(d=PCB_HV_CONNECTOR_DRILL_DIMMENSION);
                            }

                            translate([PCB_HV_CONNECTOR_X/2 - PCB_HV_CONNECTOR_DRILL_DISTNCE_X, -PCB_HV_CONNECTOR_Y/2 + PCB_HV_CONNECTOR_DRILL_DISTNCE_Y, 0])
                            {
                                circle(d=PCB_HV_CONNECTOR_DRILL_DIMMENSION);
                            }

                            translate([PCB_HV_CONNECTOR_X/2 - PCB_HV_CONNECTOR_DRILL_DISTNCE_X, PCB_HV_CONNECTOR_Y/2 - PCB_HV_CONNECTOR_DRILL_DISTNCE_Y, 0])
                            {
                                circle(d=PCB_HV_CONNECTOR_DRILL_DIMMENSION);
                            }
                        }
                        
                    }
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
                                PCB_HV_CONNECTOR_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET);
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
                                PCB_HV_CONNECTOR_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET);
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
                    translate([offsetX, offsetY + (0.5*PCB_ACQUISITION_Z), 0])
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
    translate([0, Render_Data_Acquisition_PCB_Offset + PCB_ACQUISITION_X/2, 0])
    {
        rotate([0,0,90])
        {
            for (offset = [0:10:30])
            {
                translate([0, 0, offset - (1.5*PCB_ACQUISITION_Z)])
                {
                    linear_extrude(height = PCB_THICKNESS, convexity = 10, twist = 0) 
                    {
                        difference()
                        {
                            square([PCB_ACQUISITION_X, PCB_ACQUISITION_Y], center=true);

                            translate([-PCB_ACQUISITION_X/2 + PCB_ACQUISITION_DRILL_DISTNCE_X, -PCB_ACQUISITION_Y/2 + PCB_ACQUISITION_DRILL_DISTNCE_Y, 0])
                            {
                                circle(d=PCB_ACQUISITION_DRILL_DIMMENSION);
                            }
                            
                            translate([-PCB_ACQUISITION_X/2 + PCB_ACQUISITION_DRILL_DISTNCE_X, PCB_ACQUISITION_Y/2 - PCB_ACQUISITION_DRILL_DISTNCE_Y, 0])
                            {
                                circle(d=PCB_ACQUISITION_DRILL_DIMMENSION);
                            }

                            translate([PCB_ACQUISITION_X/2 - PCB_ACQUISITION_DRILL_DISTNCE_X, -PCB_ACQUISITION_Y/2 + PCB_ACQUISITION_DRILL_DISTNCE_Y, 0])
                            {
                                circle(d=PCB_ACQUISITION_DRILL_DIMMENSION);
                            }

                            translate([PCB_ACQUISITION_X/2 - PCB_ACQUISITION_DRILL_DISTNCE_X, PCB_ACQUISITION_Y/2 - PCB_ACQUISITION_DRILL_DISTNCE_Y, 0])
                            {
                                circle(d=PCB_ACQUISITION_DRILL_DIMMENSION);
                            }
                        }
                    }
                }
            }
        }
    }
}

module Render_DataAcquisition_Holder_First_Holder()
{
    translate([0,Render_DataAcquisitionHolder_First_Holder_Offset + HORIZONTAL_PCB_BAR_THICKNESS/2, 0])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_HV_CONNECTOR_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET);
        }
    }
}

module Render_DataAcquisition_Holder_Second_Holder()
{
    translate([0,Render_DataAcquisitionHolder_Second_Holder_Offset + HORIZONTAL_PCB_BAR_THICKNESS/2, 0])
    {
        rotate([90,0,0])
        {
            Horizontal_PCB_Holder(ROD_OFFSET_X, 
                                ROD_OFFSET_Y, 
                                PCB_HV_CONNECTOR_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET);
        }
    }
}

module Render_HV_Geiger_Tube_Connector_Mounting_Rods ()
{
    Y_OFFSET = Render_HV_Geiger_Tube_Connector_Offset + PCB_HV_CONNECTOR_Y/2;
    Z_OFFSET = -(PCB_ACQUISITION_Z) * 3 / 2 - 4;
    translate([0, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,180])
        {
            HEIGHT = (PCB_HV_CONNECTOR_Z) * 3 + 8;

            linear_extrude(height = HEIGHT, convexity = 10, twist = 0) 
            {
                translate([-PCB_HV_CONNECTOR_X/2 + PCB_HV_CONNECTOR_DRILL_DISTNCE_X, -PCB_HV_CONNECTOR_Y/2 + PCB_HV_CONNECTOR_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_HV_CONNECTOR_DRILL_DIMMENSION);
                }
                
                translate([-PCB_HV_CONNECTOR_X/2 + PCB_HV_CONNECTOR_DRILL_DISTNCE_X, PCB_HV_CONNECTOR_Y/2 - PCB_HV_CONNECTOR_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_HV_CONNECTOR_DRILL_DIMMENSION);
                }

                translate([PCB_HV_CONNECTOR_X/2 - PCB_HV_CONNECTOR_DRILL_DISTNCE_X, -PCB_HV_CONNECTOR_Y/2 + PCB_HV_CONNECTOR_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_HV_CONNECTOR_DRILL_DIMMENSION);
                }

                translate([PCB_HV_CONNECTOR_X/2 - PCB_HV_CONNECTOR_DRILL_DISTNCE_X, PCB_HV_CONNECTOR_Y/2 - PCB_HV_CONNECTOR_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_HV_CONNECTOR_DRILL_DIMMENSION);
                }
            }
        }
    }
}

module Render_DataAcquisition_Holder_Mounting_Rods ()
{
    Y_OFFSET = Render_Data_Acquisition_PCB_Offset + PCB_ACQUISITION_X/2;
    Z_OFFSET = -(PCB_ACQUISITION_Z) * 3 / 2 - 4;
    translate([0, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            HEIGHT = (PCB_ACQUISITION_Z) * 3 + 8;
            linear_extrude(height = HEIGHT, convexity = 10, twist = 0) 
            {
                translate([-PCB_ACQUISITION_X/2 + PCB_ACQUISITION_DRILL_DISTNCE_X, -PCB_ACQUISITION_Y/2 + PCB_ACQUISITION_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_ACQUISITION_DRILL_DIMMENSION);
                }

                translate([-PCB_ACQUISITION_X/2 + PCB_ACQUISITION_DRILL_DISTNCE_X, PCB_ACQUISITION_Y/2 - PCB_ACQUISITION_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_ACQUISITION_DRILL_DIMMENSION);
                }

                translate([PCB_ACQUISITION_X/2 - PCB_ACQUISITION_DRILL_DISTNCE_X, -PCB_ACQUISITION_Y/2 + PCB_ACQUISITION_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_ACQUISITION_DRILL_DIMMENSION);
                }

                translate([PCB_ACQUISITION_X/2 - PCB_ACQUISITION_DRILL_DISTNCE_X, PCB_ACQUISITION_Y/2 - PCB_ACQUISITION_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_ACQUISITION_DRILL_DIMMENSION);
                }

            }
        }
     }
}

module Render_FPGA()
{
    X_OFFSET = 0;
    Y_OFFSET = Render_FPGA_Offset  + PCB_FPGA_X/2;
    Z_OFFSET = 0;
    translate([X_OFFSET, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            linear_extrude(height = PCB_THICKNESS, convexity = 10, twist = 0) 
            {             
                difference()
                {
                    square([PCB_FPGA_X, PCB_FPGA_Y], center=true);

                    translate([-PCB_FPGA_X/2 + PCB_FPGA_DRILL_DISTNCE_X, -PCB_FPGA_Y/2 + PCB_FPGA_DRILL_DISTNCE_Y, 0])
                    {
                        circle(d=PCB_FPGA_DRILL_DIMMENSION);
                    }
                    
                    translate([-PCB_FPGA_X/2 + PCB_FPGA_DRILL_DISTNCE_X, PCB_FPGA_Y/2 - PCB_FPGA_DRILL_DISTNCE_Y, 0])
                    {
                        circle(d=PCB_FPGA_DRILL_DIMMENSION);
                    }

                    translate([PCB_FPGA_X/2 - PCB_FPGA_DRILL_DISTNCE_X, -PCB_FPGA_Y/2 + PCB_FPGA_DRILL_DISTNCE_Y, 0])
                    {
                        circle(d=PCB_FPGA_DRILL_DIMMENSION);
                    }

                    translate([PCB_FPGA_X/2 - PCB_FPGA_DRILL_DISTNCE_X, PCB_FPGA_Y/2 - PCB_FPGA_DRILL_DISTNCE_Y, 0])
                    {
                        circle(d=PCB_FPGA_DRILL_DIMMENSION);
                    }
                }
            }
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
                                PCB_HV_CONNECTOR_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET);
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
                                PCB_HV_CONNECTOR_X, 
                                MOUNTING_BAR_THICKNESS, 
                                HORIZONTAL_PCB_BAR_THICKNESS,
                                SUPPORT_BAR_OFFSET);
        }
    }
}

module Render_FPGA_Holder_Mounting_Rods()
{
    Y_OFFSET = Render_FPGA_Offset + PCB_FPGA_X / 2;
    Z_OFFSET = -(PCB_ACQUISITION_Z) * 3 / 2 - 4;
    translate([0, Y_OFFSET, Z_OFFSET])
    {
        rotate([0,0,90])
        {
            HEIGHT = -Z_OFFSET + 4;

            linear_extrude(height = HEIGHT, convexity = 10, twist = 0) 
            {
                translate([-PCB_FPGA_X/2 + PCB_FPGA_DRILL_DISTNCE_X, -PCB_FPGA_Y/2 + PCB_FPGA_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_FPGA_DRILL_DIMMENSION);
                }
                
                translate([-PCB_FPGA_X/2 + PCB_FPGA_DRILL_DISTNCE_X, PCB_FPGA_Y/2 - PCB_FPGA_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_FPGA_DRILL_DIMMENSION);
                }

                translate([PCB_FPGA_X/2 - PCB_FPGA_DRILL_DISTNCE_X, -PCB_FPGA_Y/2 + PCB_FPGA_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_FPGA_DRILL_DIMMENSION);
                }

                translate([PCB_FPGA_X/2 - PCB_FPGA_DRILL_DISTNCE_X, PCB_FPGA_Y/2 - PCB_FPGA_DRILL_DISTNCE_Y, 0])
                {
                    circle(d=PCB_FPGA_DRILL_DIMMENSION);
                }
            }
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

Render_HV_Generator_Shield();
Render_HV_Generator_PCB_Holder();
Render_HV_Generator_PCB();   

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
Render_FPGA_Holder_First_Holder(); 
Render_FPGA_Holder_Second_Holder(); 
Render_FPGA_Holder_Mounting_Rods(); 

Render_Chassis_Main_Rods();         
