include <HorizontalRods.scad>;

module HV_Generator()
{
    linear_extrude(height = PCB_THICKNESS, convexity = 10, twist = 0)
    {
        square([PCB_HV_GEN_X, PCB_HV_GEN_Y], center=true);
    }
}
