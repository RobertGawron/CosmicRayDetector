include <HorizontalRods.scad>;



module HV_Generator_Holder(PCB_HV_GEN_X, PCB_HV_GEN_Y, ROD_OFFSET_X, ROD_OFFSET_Y, MOUNTING_BAR_THICKNESS) 
{
    pcbWidth = 50;
    pcbHeight = 45;

    holderAroundPCBThickness = MOUNTING_BAR_THICKNESS;
    
    linear_extrude(height = MOUNTING_BAR_THICKNESS, convexity = 10, twist = 0) 
        union()
        {
            difference()
            {
                union()
                {
                    translate([-PCB_HV_GEN_X/2 - holderAroundPCBThickness, -PCB_HV_GEN_Y/2 - holderAroundPCBThickness, 0])
                        square([PCB_HV_GEN_X + (2*holderAroundPCBThickness), PCB_HV_GEN_Y + (2*holderAroundPCBThickness)]);

                    Horizontal_Rods_Mountings(ROD_OFFSET_X, ROD_OFFSET_Y);
                    Horizontal_Rods_Bar(ROD_OFFSET_X, ROD_OFFSET_Y, 2*MOUNTING_BAR_THICKNESS);
                }
                 translate([-PCB_HV_GEN_X/2, -PCB_HV_GEN_Y/2, 0])
                    square([PCB_HV_GEN_X, PCB_HV_GEN_Y]);
            }
            Horizontal_Rods_Inner_Holes(ROD_OFFSET_X, ROD_OFFSET_Y);
            HV_Generator_Screws(PCB_HV_GEN_X, PCB_HV_GEN_Y);
        }
}

// shield to avoid accidental touching of HV parts on the PCB
module HV_Generator_Shield(ROD_OFFSET_X, ROD_OFFSET_Y, MOUNTING_BAR_THICKNESS) 
{
    pcbWidth = 50;
    pcbHeight = 45;

    holderAroundPCBThickness = MOUNTING_BAR_THICKNESS;
    
    linear_extrude(height = MOUNTING_BAR_THICKNESS, convexity = 10, twist = 0)
    {
        translate([-pcbHeight/2 - holderAroundPCBThickness, -pcbWidth/2 - holderAroundPCBThickness, 0])
            square([pcbHeight + (2*holderAroundPCBThickness), pcbWidth + (2*holderAroundPCBThickness)]);

        Horizontal_Rods_Mountings(ROD_OFFSET_X, ROD_OFFSET_Y);
        Horizontal_Rods_Bar(ROD_OFFSET_X, ROD_OFFSET_Y, 2*MOUNTING_BAR_THICKNESS);
    }
       
}

module HV_Generator_Screws(pcbHeight, pcbWidth)
{
    // impossible to use loop because PCB is rectangular

    // bottom left
    translate([-pcbHeight/2, -pcbWidth/2, 0])
        HV_Generator_Screw_Hole();

    // bottom right
    translate([-pcbHeight/2, pcbWidth/2, 0])
        rotate([0,0,270])
        HV_Generator_Screw_Hole();

    // top left
    translate([pcbHeight/2, -pcbWidth/2, 0])
        rotate([0,0,90])
        HV_Generator_Screw_Hole();

    // top right
    translate([pcbHeight/2, pcbWidth/2, 0])
        rotate([0,0,180])
        HV_Generator_Screw_Hole();
}


module HV_Generator_Screw_Hole()
{
    radiusOfHolder = 11;
    radiusOfHole = 3.5/2;
    holeToEgeDistans = 5;

    difference()
    {
        intersection ()
        {
            circle(radiusOfHolder);
            square(radiusOfHolder);
        }
        translate([holeToEgeDistans, holeToEgeDistans, 0])
            circle(radiusOfHole);
    }
}
