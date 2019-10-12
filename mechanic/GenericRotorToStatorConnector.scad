include <Constants.scad>;
include <make_generic_rotor_mounting_point.scad>;

//rotorBasic();

module rotorBasic(){
    linear_extrude(height = 4, center = true, convexity = 10, twist = 0)
        union(){    
            make_generic_rotor_mounting_point();
            innerRing();
            ballBearingHandler();
        }
}

module rotorBars(){
    screws(barHoleRadius);    
}

module innerRing(){
    innerRingDiameter = 10;
    circle(innerRingDiameter);  
}

module ballBearingHandler(){
    diameter = 4;
    circle(diameter);       
}
