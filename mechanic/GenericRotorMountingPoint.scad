/* This module provides generic connector between bars and components. */

include <Constants.scad>;

RotorhandlerPillarWidth = 5;
RotorhandlerPillarHeight = 40;
RotorhandlerOuterRingThickness = 6;
RotorhandlerPillarsAmount = 4;

rotorHandler();

module rotorHandler(){
    barMountinSupportThickness = 4;

    difference(){
        union(){
            pillars();
            outerRing(RotorhandlerPillarHeight,RotorhandlerOuterRingThickness);
            screws(barHoleRadius + barMountinSupportThickness);
        }
        screws(barHoleRadius);
    }
}

module outerRing(distanceToCenterRotationPoint, radius){
    outerRingDiameter = distanceToCenterRotationPoint + radius;
    difference(){
        circle(outerRingDiameter);        
        circle(distanceToCenterRotationPoint);    
    }
}

module pillars(){ 
    step = 360 / RotorhandlerPillarsAmount;
    for (angle = [0:step:360])
        rotate([0,0,angle])
        translate([-RotorhandlerPillarWidth / 2,0,0])
        pillar();
}

module pillar(){
    square([RotorhandlerPillarWidth, RotorhandlerPillarHeight], center=false);
}

module screws(radius){
    screwRadiusToCenterRotationPoint = RotorhandlerPillarHeight + RotorhandlerOuterRingThickness/2;
    step = 360 / RotorhandlerPillarsAmount;

    for (angle = [0:step:360])
        rotate([0,0,angle+90])
        translate([screwRadiusToCenterRotationPoint,0,0])
        circle(radius);
}
