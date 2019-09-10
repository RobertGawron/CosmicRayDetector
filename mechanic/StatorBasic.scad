include <Constants.scad>;

pillarHeight = 45;

module statorBasic(){
	pillarWidth =10;

    linear_extrude(height = 10, convexity = 10, twist = 0) 
        difference(){    
            union(){           
                pillars(pillarHeight, pillarWidth);
                statorMountingPoints(pillarHeight, 10);
            }
            statorMountingPoints(pillarHeight, 4);        
        }
}

module statorBars(){
     statorMountingPoints(pillarHeight, 4);
}

// Don't use below modules in other files.

module statorMountingPoints(pillarHeight, radius){
for (angle = [0:120:360])
    rotate([0,0,angle])
	translate ([pillarHeight,0,0])
	circle(radius);
}

module pillary(width, height){
    square([width, height], center=false);
}

module pillarsy(width, height){ 
    for (angle = [0:120:360])
        rotate([0,0,angle])
        translate([0,(-height / 2),0])
        pillary(width, height);
}
