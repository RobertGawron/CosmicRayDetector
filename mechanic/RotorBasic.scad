include <Constants.scad>;
include <RotorHandler.scad>;

module rotorBasic(){
    linear_extrude(height = 4, center = true, convexity = 10, twist = 0)
        union(){    
			rotorHandler();
            innerRing();
            ballBearingHandler();
        }
}

module rotorBars(){
    screws(rotorPillarHeight, 2.5, barHoleRadius);    
}

module innerRing(){
    innerRingDiameter = 10;
    circle(innerRingDiameter);  
}



module ballBearingHandler(){
    diameter = 4;
    circle(diameter);       
}

//rotorBasic();