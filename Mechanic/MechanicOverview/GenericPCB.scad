include <PCBDimensions.scad>;

module Generic_PCB(PCB_THICKNESS, 
        PCB_X, 
        PCB_Y, 
        PCB_DRILL_DISTNCE_X, 
        PCB_DRILL_DISTNCE_Y,
        PCB_DRILL_DIAMETER)
{
    linear_extrude(height = PCB_THICKNESS, convexity = 10, twist = 0) 
    {
        difference()
        {
            square([PCB_X, PCB_Y], center=true);

            translate([-PCB_X/2 + PCB_DRILL_DISTNCE_X, -PCB_Y/2 + PCB_DRILL_DISTNCE_Y, 0])
            {
                circle(d=PCB_DRILL_DIAMETER);
            }
            
            translate([-PCB_X/2 + PCB_DRILL_DISTNCE_X, PCB_Y/2 - PCB_DRILL_DISTNCE_Y, 0])
            {
                circle(d=PCB_DRILL_DIAMETER);
            }

            translate([PCB_X/2 - PCB_DRILL_DISTNCE_X, -PCB_Y/2 + PCB_DRILL_DISTNCE_Y, 0])
            {
                circle(d=PCB_DRILL_DIAMETER);
            }

            translate([PCB_X/2 - PCB_DRILL_DISTNCE_X, PCB_Y/2 - PCB_DRILL_DISTNCE_Y, 0])
            {
                circle(d=PCB_DRILL_DIAMETER);
            }
        }
    }
}
