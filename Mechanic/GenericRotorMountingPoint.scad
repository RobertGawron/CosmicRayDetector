/* This module provides generic connector between bars and components. */

include <Constants.scad>;

RotorMountingPointPillarWidth = 5;
RotorMountingPointPillarHeight = 40;
RotorMountingPointmake_outer_ringThickness = 6;
RotorMountingPointPillarsAmount = 4;

make_generic_rotor_mounting_point();

module make_generic_rotor_mounting_point(){
    barMountinSupportThickness = 4;

    difference(){
        union(){
            pillars();
            make_outer_ring(RotorMountingPointPillarHeight,RotorMountingPointmake_outer_ringThickness);
            make_generic_rotor_mounting_circle_at_pillar_end(barHoleRadius + barMountinSupportThickness);
        }
        make_generic_rotor_mounting_circle_at_pillar_end(barHoleRadius);
    }
}

module make_outer_ring(distanceToCenterRotationPoint, radius){
    make_outer_ringDiameter = distanceToCenterRotationPoint + radius;
    difference(){
        circle(make_outer_ringDiameter);        
        circle(distanceToCenterRotationPoint);    
    }
}

module pillars(){ 
    step = 360 / RotorMountingPointPillarsAmount;
    for (angle = [0:step:360])
        rotate([0,0,angle])
        translate([-RotorMountingPointPillarWidth / 2,0,0])
        pillar();
}

module pillar(){
    square([RotorMountingPointPillarWidth, RotorMountingPointPillarHeight], center=false);
}

module make_generic_rotor_mounting_circle_at_pillar_end(radius){
    screwRadiusToCenterRotationPoint = RotorMountingPointPillarHeight + RotorMountingPointmake_outer_ringThickness/2;
    step = 360 / RotorMountingPointPillarsAmount;

    for (angle = [0:step:360])
        rotate([0,0,angle+90])
        translate([screwRadiusToCenterRotationPoint,0,0])
        circle(radius);
}
