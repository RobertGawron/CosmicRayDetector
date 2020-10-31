include <PCBDimensions.scad>;
include <GenericExternalPCBHolder.scad>;
include <HorizontalPCBHolder.scad>;

module FPGA_Holder(Thickness, 
                    PCBScrewSupportHeight, 
                    MainBoardConnectorX, 
                    MainBoardConnectorY,
                    MainBoardConnectorZ)
{
    TotalHeight = Thickness + PCBScrewSupportHeight;
    ScrewSupportDimeter = 2 * PCB_FPGA_DRILL_DIAMETER;
    BarWidth = ScrewSupportDimeter/2;

    difference()
    {    
        Generic_External_PCB_Holder(PCB_FPGA_X, 
                                PCB_FPGA_Y, 
                                PCB_FPGA_DRILL_DISTNCE_X, 
                                PCB_FPGA_DRILL_DISTNCE_Y, 
                                PCB_FPGA_DRILL_DIAMETER,
                                PCB_FPGA_X,
                                MainBoardConnectorX,
                                MainBoardConnectorZ,
                                Thickness,
                                EXTERNAL_HOLE_OFFSET, 
                                PCBScrewSupportHeight, 
                                ScrewSupportHoleRadius);

        translate([-ScrewSupportDimeter, 0, -MainBoardConnectorZ])
        {
            linear_extrude(height = TotalHeight+MainBoardConnectorZ, convexity = 10, twist = 0) 
            {
                square([PCB_FPGA_X - BarWidth, PCB_FPGA_Y], center=true);
            }
        }   

        FPGA_Holes_To_Connect_Mainboard(PCB_FPGA_X,
                                    BarWidth,
                                    MainBoardConnectorZ,
                                    TotalHeight,
                                    EXTERNAL_HOLE_OFFSET,
                                    ScrewSupportHoleRadius);
    }                            
}

module FPGA_Holes_To_Connect_Mainboard(PCB_FPGA_X,
                                    BarWidth,
                                    MainBoardConnectorZ,
                                    TotalHeight,
                                    EXTERNAL_HOLE_OFFSET,
                                    ScrewSupportHoleRadius)
{
    translate([PCB_FPGA_X/2 - BarWidth, 0,-MainBoardConnectorZ])
    {
        rotate([0,0,90])
        {
            linear_extrude(height = TotalHeight+MainBoardConnectorZ, convexity = 10, twist = 0) 
            {
                Holes_To_Connect_Mainboard(EXTERNAL_HOLE_OFFSET, ScrewSupportHoleRadius);
            }     
        }  
    }
}
