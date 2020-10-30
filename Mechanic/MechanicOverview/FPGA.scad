include <PCBDimensions.scad>;

module FPGA()
{
    linear_extrude(height = PCB_THICKNESS, convexity = 10, twist = 0) 
    {             
        difference()
        {
            square([PCB_FPGA_X, PCB_FPGA_Y], center=true);

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