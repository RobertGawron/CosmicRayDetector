ROD_RADIUS = 2;
ROD_HOLDER_RADIUS = ROD_RADIUS + 3;


module Horizontal_Rods(ROD_OFFSET_X, ROD_OFFSET_Y, length)
{
    linear_extrude(height = length, convexity = 10, twist = 0)
    {
        translate([ROD_OFFSET_X, ROD_OFFSET_Y, 0])
            circle(r = ROD_RADIUS);  

        translate([ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
            circle(r = ROD_RADIUS);  

        translate([-ROD_OFFSET_X, ROD_OFFSET_Y, 0])
            circle(r = ROD_RADIUS);  
            
        translate([-ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
            circle(r = ROD_RADIUS); 
    }
}

module Horizontal_Rods_Mountings (ROD_OFFSET_X, ROD_OFFSET_Y)
{
    // spheres around rod mounting points
    translate([ROD_OFFSET_X, ROD_OFFSET_Y, 0])
        circle(r = ROD_HOLDER_RADIUS);  

    translate([ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
        circle(r = ROD_HOLDER_RADIUS);  

    translate([-ROD_OFFSET_X, ROD_OFFSET_Y, 0])
        circle(r = ROD_HOLDER_RADIUS);  
        
    translate([-ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
        circle(r = ROD_HOLDER_RADIUS);   
}

module Horizontal_Rods_Inner_Holes (ROD_OFFSET_X, ROD_OFFSET_Y)
{
    // rod mounting points
    translate([ROD_OFFSET_X, ROD_OFFSET_Y, 0])
        circle(r = ROD_RADIUS);  

    translate([ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
        circle(r = ROD_RADIUS);  

    translate([-ROD_OFFSET_X, ROD_OFFSET_Y, 0])
        circle(r = ROD_RADIUS);  
        
    translate([-ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
        circle(r = ROD_RADIUS);  
}

module Horizontal_Rods_Bar (ROD_OFFSET_X, ROD_OFFSET_Y, SHIELD_MOUNTING_BAR_THICKNESS)
{
    // bar from bottom left to upper right
    BAR_THICKNESS = SHIELD_MOUNTING_BAR_THICKNESS / 2;
    polygon (points= [
            [-ROD_OFFSET_X + BAR_THICKNESS, -ROD_OFFSET_Y],
            [-ROD_OFFSET_X - BAR_THICKNESS, -ROD_OFFSET_Y],
            [ROD_OFFSET_X - BAR_THICKNESS, ROD_OFFSET_Y],
            [ROD_OFFSET_X + BAR_THICKNESS, ROD_OFFSET_Y]] );

    polygon (points= [
            [ROD_OFFSET_X + BAR_THICKNESS, -ROD_OFFSET_Y],
            [ROD_OFFSET_X - BAR_THICKNESS, -ROD_OFFSET_Y],
            [-ROD_OFFSET_X - BAR_THICKNESS, ROD_OFFSET_Y],
            [-ROD_OFFSET_X + BAR_THICKNESS, ROD_OFFSET_Y]] );
}