include <Constants.scad>;

StatorThickness = 8;
PillarHeight = 45;
PillarWidth =10;

//make_generic_stator();

module make_generic_stator(){
    linear_extrude(height = StatorThickness, convexity = 10, twist = 0) 
        difference(){    
            union(){           
                make_stator_pillars(PillarHeight, PillarWidth);
                // TODO: 10 is a magic number
                make_circle_at_pillar_end(PillarHeight, 10);
            }
            make_circle_at_pillar_end(PillarHeight, barHoleRadius);        
        }
}

module make_stator_bars(){
     statorMountingPoints(PillarHeight, barHoleRadius);
}

module make_circle_at_pillar_end(PillarHeight, Radius){
for (angle = [120:120:360])
    rotate([0, 0, angle])
    translate ([PillarHeight, 0, 0])
    circle(Radius);
}

module make_single_stator_pillar(Width, Height){
    square([Width, Height], center=false);
}

module make_stator_pillars(Width, Height){ 
    for (angle = [0:120:360])
        rotate([0, 0, angle])
        translate([0, (-Height / 2), 0])
        make_single_stator_pillar(Width, Height);
}
