module Generic_External_PCB_Holder(PCB_X, 
                    PCB_Y, 
                    PCB_DRILL_DISTNCE_X, 
                    PCB_DRILL_DISTNCE_Y, 
                    PCB_DRILL_DIAMETER,
                    Connector_x,
                    Connector_y,
                    Connector_z,
                    Thickness,
                    EXTERNAL_HOLE_OFFSET, 
                    ScrewSupportHeight, 
                    ScrewSupportHoleRadius)
{
    TotalHeight = Thickness + ScrewSupportHeight;

    difference()
    {
        union()
        {
            linear_extrude(height = TotalHeight, convexity = 10, twist = 0) 
            {
                Circles_Around_PCB_Mounting_Holes(PCB_X, 
                                                PCB_Y, 
                                                PCB_DRILL_DISTNCE_X, 
                                                PCB_DRILL_DISTNCE_Y, 
                                                2 * PCB_DRILL_DIAMETER);
            }

            linear_extrude(height = Thickness, convexity = 10, twist = 0)
            {
                square([PCB_X, PCB_Y], center=true);
             }

            translate([0, 0, -Connector_z])
            {
                Bar_To_Connect_Mainboard(Connector_x, Connector_y, Connector_z);
            }
        }

        linear_extrude(height = TotalHeight, convexity = 10, twist = 0) 
        {
            Circles_Around_PCB_Mounting_Holes(PCB_X, 
                                            PCB_Y, 
                                            PCB_DRILL_DISTNCE_X, 
                                            PCB_DRILL_DISTNCE_Y, 
                                            PCB_DRILL_DIAMETER);
        }
        translate([0,0,-Connector_z])
        linear_extrude(height = Thickness + Connector_z, convexity = 10, twist = 0)     
        {
            Holes_To_Connect_Mainboard(EXTERNAL_HOLE_OFFSET, ScrewSupportHoleRadius);
        }
    }
}

module Circles_Around_PCB_Mounting_Holes(PCB_X, PCB_Y, PCB_DRILL_DISTNCE_X, PCB_DRILL_DISTNCE_Y, diameter)
{
    translate([PCB_X/2 -PCB_DRILL_DISTNCE_X, PCB_Y/2 - PCB_DRILL_DISTNCE_Y, 0])
    {
        circle(d=diameter);
    }

    translate([-PCB_X/2 +PCB_DRILL_DISTNCE_X, PCB_Y/2 - PCB_DRILL_DISTNCE_Y, 0])
    {
        circle(d=diameter);
    }

    translate([PCB_X/2 -PCB_DRILL_DISTNCE_X, - PCB_Y/2 + PCB_DRILL_DISTNCE_Y, 0])
    {
        circle(d=diameter);
    }

    translate([-PCB_X/2 +PCB_DRILL_DISTNCE_X, - PCB_Y/2 + PCB_DRILL_DISTNCE_Y, 0])
    {
        circle(d=diameter);
    }
}

module Holes_To_Connect_Mainboard(EXTERNAL_HOLE_OFFSET, ScrewSupportHoleRadius)
{
    translate([EXTERNAL_HOLE_OFFSET,0,0])
    {
        circle(r=ScrewSupportHoleRadius);
    }
    translate([-EXTERNAL_HOLE_OFFSET,0,0])
    {
        circle(r=ScrewSupportHoleRadius);
    }
}

module Bar_To_Connect_Mainboard(Connector_x, Connector_y, Connector_z)
{
    linear_extrude(height = Connector_z, convexity = 10, twist = 0) 
    {
        square([Connector_x, Connector_y], center=true);
    }
}
