include <PCBDimensions.scad>;
include <GenericPCB.scad>;

module FPGA()
{
    Generic_PCB(PCB_THICKNESS, 
        PCB_FPGA_X, 
        PCB_FPGA_Y, 
        PCB_FPGA_DRILL_DISTNCE_X, 
        PCB_FPGA_DRILL_DISTNCE_Y,
        PCB_FPGA_DRILL_DIAMETER);
}
