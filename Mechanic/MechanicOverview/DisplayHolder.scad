include <PCBDimensions.scad>;
include <GenericExternalPCBHolder.scad>;

module Display_Holder(Thickness, EXTERNAL_HOLE_OFFSET, ScrewSupportHeight, ScrewSupportHoleRadius)
{
    Generic_External_PCB_Holder(PCB_GENERIC_GM_X, 
                        PCB_GENERIC_GM_Y, 
                        PCB_GENERIC_GM_DRILL_DISTNCE_X, 
                        PCB_GENERIC_GM_DRILL_DISTNCE_Y, 
                        PCB_GENERIC_GM_DRILL_DIAMETER,
                        0,
                        0,
                        0,
                        Thickness,
                        EXTERNAL_HOLE_OFFSET, 
                        ScrewSupportHeight, 
                        ScrewSupportHoleRadius);
}
