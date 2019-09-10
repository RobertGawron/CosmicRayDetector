include <Constants.scad>;

RotorhandlerPillarWidth = 4;
RotorhandlerPillarHeight = 95;
RotorhandlerOuterRingThickness = 6;

module outerRing(distanceToCenterRotationPoint, radius){
    outerRingDiameter = distanceToCenterRotationPoint + radius;
    difference(){
        circle(outerRingDiameter);        
        circle(distanceToCenterRotationPoint);    
    }
}

module pillars(){ 
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([0,(-RotorhandlerPillarHeight / 2),0])
        pillar();
}

module pillar(){
    square([RotorhandlerPillarWidth, RotorhandlerPillarHeight], center=false);
}


module screws(outterRingDiameter){
    screwRadiusToCenterRotationPoint = RotorhandlerPillarHeight/2 + RotorhandlerOuterRingThickness/2;
    
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([screwRadiusToCenterRotationPoint,0,0])
        circle(barHoleRadius);
}

module rotorHandler(){
	difference(){
		union(){
			pillars();
			outerRing(RotorhandlerPillarHeight/2,RotorhandlerOuterRingThickness);

		}
		screws();
	}
}

//rotorHandler();