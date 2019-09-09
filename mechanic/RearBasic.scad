module pillar(width, height) {
    square([width, height], center=false);
}

module pillars(width, height){ 
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([0,(-height / 2),0])
        pillar(width, height);
}

module outerRing(distanceToCenterRotationPoint) {
    outerRingDiameter = distanceToCenterRotationPoint + 5;
    difference(){
        circle(outerRingDiameter);        
        circle(distanceToCenterRotationPoint);    
    }
}

module innerRing(){
    innerRingDiameter = 10;
    circle(innerRingDiameter);  
}

module screws(distanceToCenterRotationPoint, outterRingDiameter, screwDiameter){
    screwRadiusToCenterRotationPoint = distanceToCenterRotationPoint + outterRingDiameter;
    
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([screwRadiusToCenterRotationPoint,0,0])
        circle(screwDiameter);
}

module rearStator(){
    pillarWidth = 6;
    pillarHeight = 45;
    screwDiameter = 2;

    union(){
        difference(){
            // drill suport for screws
            union(){
                outerRing(pillarHeight); 
                screws(pillarHeight, 2.5, 5);
            }
            // drill holes for screws
            screws(pillarHeight, 2.5, screwDiameter);
        }
        pillars(pillarHeight, pillarWidth);
        innerRing();
    }
}

module ballBearingHandler(){
    diameter = 4;
    circle(diameter);       
}


