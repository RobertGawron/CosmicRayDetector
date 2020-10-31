include <PCBDimensions.scad>;

module HV_Generator_Holder(Thickness, 
                    ScrewSupportHeight, 
                    MainBoardConnectorX, 
                    MainBoardConnectorY,
                    MainBoardConnectorZ)
{
    Generic_External_PCB_Holder(PCB_HV_GEN_Y, 
                        PCB_HV_GEN_X, 
                        PCB_HV_GEN_DRILL_DISTNCE_X, 
                        PCB_HV_GEN_DRILL_DISTNCE_Y, 
                        PCB_HV_GEN_DRILL_DIAMETER,
                        MainBoardConnectorX,
                        MainBoardConnectorY,
                        MainBoardConnectorZ,                    
                        Thickness,
                        EXTERNAL_HOLE_OFFSET, 
                        ScrewSupportHeight, 
                        ScrewSupportHoleRadius);
}
