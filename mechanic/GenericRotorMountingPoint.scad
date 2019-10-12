/* This module provides generic connector between bars and components. */

include <Constants.scad>;

make_generic_rotor_mounting_pointPillarWidth = 5;
make_generic_rotor_mounting_pointPillarHeight = 40;
make_generic_rotor_mounting_pointOuterRingThickness = 6;
make_generic_rotor_mounting_pointPillarsAmount = 4;

make_generic_rotor_mounting_point();

module make_generic_rotor_mounting_point(){
    barMountinSupportThickness = 4;

    difference(){
        union(){
            pillars();
            outerRing(make_generic_rotor_mounting_pointPillarHeight,make_generic_rotor_mounting_pointOuterRingThickness);
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
    step = 360 / make_generic_rotor_mounting_pointPillarsAmount;
    for (angle = [0:step:360])
        rotate([0,0,angle])
        translate([-make_generic_rotor_mounting_pointPillarWidth / 2,0,0])
        pillar();
}

module pillar(){
    square([make_generic_rotor_mounting_pointPillarWidth, make_generic_rotor_mounting_pointPillarHeight], center=false);
}

module screws(radius){
    screwRadiusToCenterRotationPoint = make_generic_rotor_mounting_pointPillarHeight + make_generic_rotor_mounting_pointOuterRingThickness/2;
    step = 360 / make_generic_rotor_mounting_pointPillarsAmount;

    for (angle = [0:step:360])
        rotate([0,0,angle+90])
        translate([screwRadiusToCenterRotationPoint,0,0])
        circle(radius);
}
