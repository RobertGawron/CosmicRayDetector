include <Constants.scad>;

module rotorBasic(){
    pillarWidth = 6;
    pillarHeight = 45;
    outerRingRadius = 5;

    linear_extrude(height = 4, center = true, convexity = 10, twist = 0)
        union(){
            difference(){
                // drill suport for screws
                union(){
                    outerRing(pillarHeight, outerRingRadius); 
                    screws(pillarHeight, 2.5, 5);
                }
                // drill holes for screws
                screws(pillarHeight, 2.5, barHoleRadius);
            }
            pillars(pillarHeight, pillarWidth);
            innerRing();
            ballBearingHandler();
        }
}

module rotorBars(){
    screws(rotorPillarHeight, 2.5, barHoleRadius);    
}


// Don't use below modules in other files.

// TODO: DRY pillar/pillars in StatorBasic
module pillar(width, height) {
    square([width, height], center=false);
}

module pillars(width, height){ 
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([0,(-height / 2),0])
        pillar(width, height);
}

module outerRing(distanceToCenterRotationPoint, radius) {
    outerRingDiameter = distanceToCenterRotationPoint + radius;
    difference(){
        circle(outerRingDiameter);        
        circle(distanceToCenterRotationPoint);    
    }
}

module innerRing(){
    innerRingDiameter = 10;
    circle(innerRingDiameter);  
}

module screws(distanceToCenterRotationPoint, outterRingDiameter, barHoleRadius){
    screwRadiusToCenterRotationPoint = distanceToCenterRotationPoint + outterRingDiameter;
    
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([screwRadiusToCenterRotationPoint,0,0])
        circle(barHoleRadius);
}

module ballBearingHandler(){
    diameter = 4;
    circle(diameter);       
}
