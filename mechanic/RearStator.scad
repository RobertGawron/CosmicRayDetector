pillarWidth = 10;
pillarHeight = 80;
screwDiameter = 4;

module pillar(width, height) {
    square([width, height], center=false);
}

module pillars(width, height){ 
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([0,(-pillarWidth / 2),0])
        pillar(width, height);
}

module outerRing() {
    outerRingDiameter = pillarHeight + 10;
    difference(){
        circle(outerRingDiameter);        
        circle(pillarHeight);    
    }
}

module innerRing(){
    innerRingDiameter = 20;
    circle(innerRingDiameter);  
}

module screwsMountingPoints(){
    screwRadiusToCenterRotationPoint = pillarHeight + 5;
    
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([screwRadiusToCenterRotationPoint,0,0])
        circle(screwDiameter, center=true);
}

module rearStator(){
    union(){
        difference(){
            outerRing(); 
            screwsMountingPoints();
        }
        pillars(pillarHeight, pillarWidth);
        innerRing();
    }
}

linear_extrude(height = 10, center = true, convexity = 10, twist = 0)
    rearStator();