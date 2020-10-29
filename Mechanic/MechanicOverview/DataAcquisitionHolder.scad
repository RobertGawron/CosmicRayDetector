include <HorizontalRods.scad>;


module DataAcquisition_Holder(ROD_OFFSET_X, ROD_OFFSET_Y, PCB_Y_LEN, MOUNTING_BAR_THICKNESS) 
{
    BAR_THICKNESS = MOUNTING_BAR_THICKNESS / 2;

    linear_extrude(height = MOUNTING_BAR_THICKNESS, convexity = 10, twist = 0)
    {
        union()
        {
            polygon (points= [
                    [-ROD_OFFSET_X - BAR_THICKNESS, -ROD_OFFSET_Y],
                    [-ROD_OFFSET_X + BAR_THICKNESS, -ROD_OFFSET_Y],
                    [-PCB_Y_LEN/2, -30],
                    [-PCB_Y_LEN/2, 30],
                    [-ROD_OFFSET_X + BAR_THICKNESS, ROD_OFFSET_Y],
                    [-ROD_OFFSET_X - BAR_THICKNESS, ROD_OFFSET_Y],
                    [-PCB_Y_LEN/2 - 2*BAR_THICKNESS, 30],
                    [-PCB_Y_LEN/2 - 2*BAR_THICKNESS, -30],

                ] );

                polygon (points= [
                    [ROD_OFFSET_X + BAR_THICKNESS, -ROD_OFFSET_Y],
                    [ROD_OFFSET_X - BAR_THICKNESS, -ROD_OFFSET_Y],
                    [PCB_Y_LEN/2, -30],
                    [PCB_Y_LEN/2, 30],
                    [ROD_OFFSET_X - BAR_THICKNESS, ROD_OFFSET_Y],
                    [ROD_OFFSET_X + BAR_THICKNESS, ROD_OFFSET_Y],
                    [PCB_Y_LEN/2 + 2*BAR_THICKNESS, 30],
                    [PCB_Y_LEN/2 + 2*BAR_THICKNESS, -30],

                ] );            
        }
    }
}
