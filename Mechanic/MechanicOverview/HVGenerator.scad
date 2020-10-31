include <HorizontalRods.scad>;
include <GenericPCB.scad>;

module HV_Generator()
{
    Generic_PCB(PCB_THICKNESS, 
        PCB_HV_GEN_Y, 
        PCB_HV_GEN_X, 
        PCB_HV_GEN_DRILL_DISTNCE_X, 
        PCB_HV_GEN_DRILL_DISTNCE_Y,
        PCB_HV_GEN_DRILL_DIAMETER);
}
