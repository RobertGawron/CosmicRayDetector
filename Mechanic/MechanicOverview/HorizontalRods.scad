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

module Horizontal_Rods_Mountings(ROD_OFFSET_X, ROD_OFFSET_Y)
{
    Horizontal_Rods_Mountings_Top(ROD_OFFSET_X, ROD_OFFSET_Y);
    Horizontal_Rods_Mountings_Bottom(ROD_OFFSET_X, ROD_OFFSET_Y);
}

module Horizontal_Rods_Inner_Holes(ROD_OFFSET_X, ROD_OFFSET_Y)
{
    Horizontal_Rods_Inner_Holes_Top(ROD_OFFSET_X, ROD_OFFSET_Y);
    Horizontal_Rods_Inner_Holes_Bottom(ROD_OFFSET_X, ROD_OFFSET_Y);
}

module Horizontal_Rods_Mountings_Top(ROD_OFFSET_X, ROD_OFFSET_Y)
{
    translate([-ROD_OFFSET_X, ROD_OFFSET_Y, 0])
    {
        circle(r = ROD_HOLDER_RADIUS);  
    }
    
    translate([ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
    {
        circle(r = ROD_HOLDER_RADIUS);  
    }    
}

module Horizontal_Rods_Mountings_Bottom(ROD_OFFSET_X, ROD_OFFSET_Y)
{
    translate([ROD_OFFSET_X, ROD_OFFSET_Y, 0])
    {
        circle(r = ROD_HOLDER_RADIUS);  
    }
    
    translate([-ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
    {
        circle(r = ROD_HOLDER_RADIUS);  
    }
}

module Horizontal_Rods_Inner_Holes_Top(ROD_OFFSET_X, ROD_OFFSET_Y)
{
    translate([-ROD_OFFSET_X, ROD_OFFSET_Y, 0])
    {
        circle(r = ROD_RADIUS);  
    }
        
    translate([ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
    {
        circle(r = ROD_RADIUS);         
    }
}

module Horizontal_Rods_Inner_Holes_Bottom(ROD_OFFSET_X, ROD_OFFSET_Y)
{
    translate([ROD_OFFSET_X, ROD_OFFSET_Y, 0])
    {
        circle(r = ROD_RADIUS);  
    }
        
    translate([-ROD_OFFSET_X, -ROD_OFFSET_Y, 0])
    {
        circle(r = ROD_RADIUS);         
    }
}
