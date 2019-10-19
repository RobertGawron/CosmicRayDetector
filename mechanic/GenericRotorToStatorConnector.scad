include <Constants.scad>;
include <GenericRotorMountingPoint.scad>;

make_generic_rotor_to_stator_connector();

module make_generic_rotor_to_stator_connector(){
    linear_extrude(height = 4, center = true, convexity = 10, twist = 0)
        union(){    
            make_generic_rotor_mounting_point();
            innerRing();
            ballBearingHandler();
        }
}

module rotorBars(){
  //  screws(barHoleRadius);    
}

module innerRing(){
    innerRingDiameter = 10;
    circle(innerRingDiameter);  
}

module ballBearingHandler(){
    diameter = 4;
    circle(diameter);       
}
