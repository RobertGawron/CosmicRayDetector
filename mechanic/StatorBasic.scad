include <Constants.scad>;
StatorThickness = 8;


//statorBasic();

pillarHeight = 45;

module statorBasic(){
	pillarWidth =10;

    linear_extrude(height = StatorThickness, convexity = 10, twist = 0) 
        difference(){    
            union(){           
                rotorPillars(pillarHeight, pillarWidth);
                statorMountingPoints(pillarHeight, 10);
            }
            statorMountingPoints(pillarHeight, barHoleRadius);        
        }
}

module statorBars(){
     statorMountingPoints(pillarHeight, barHoleRadius);
}


module statorMountingPoints(pillarHeight, radius){
for (angle = [120:120:360])
    rotate([0,0,angle])
	translate ([pillarHeight,0,0])
	circle(radius);
}

module rotorPillar(width, height){
    square([width, height], center=false);
}

module rotorPillars(width, height){ 
    for (angle = [0:120:360])
        rotate([0,0,angle])
        translate([0,(-height / 2),0])
        rotorPillar(width, height);
}
