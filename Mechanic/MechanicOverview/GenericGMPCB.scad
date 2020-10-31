include <PCBDimensions.scad>;
include <GenericPCB.scad>;

module Generic_GM_PCB()
{
    Generic_PCB(PCB_THICKNESS, 
        PCB_GENERIC_GM_X, 
        PCB_GENERIC_GM_Y, 
        PCB_GENERIC_GM_DRILL_DISTNCE_X, 
        PCB_GENERIC_GM_DRILL_DISTNCE_Y,
        PCB_GENERIC_GM_DRILL_DIAMETER);
}
