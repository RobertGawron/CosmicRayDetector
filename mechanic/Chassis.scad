include <GenericRotorToStatorConnector.scad>;
include <GenericStator.scad>;
include <HighVoltageGeneratorHolder.scad>;
include <HighVoltageGMConnectorHolder.scad>;
include <GMTube.scad>;


module FPGABoardMockup(){
    color("White")
        %import("PCBModelsFromKiCad/FPGABoardMockup.stl");    
}

module CosmicRayDetector(){
    color("Green")
        %import("PCBModelsFromKiCad/CosmicRayDetector.stl");    
}

module HighVoltageGMConnector(){
    color("Green")
        %import("PCBModelsFromKiCad/HighVoltageGMConnector.stl");    
}

module HighVoltageGenerator(){
    color("Green")
        %import("PCBModelsFromKiCad/HighVoltageGenerator.stl");    
}

rotate([180,0,0])
    translate([-4,6,-38]) // dirty hack to fit into KiCAD exports
        HighVoltageGenerator();

rotate([0,90,0])
    for (offset = [0:10:30])
        translate([-60,-30,offset-20])
            HighVoltageGMConnector();




rotate([0,90,0])
    for (offset = [0:10:30])
        translate([-160,-45,offset-20])
            CosmicRayDetector();

rotate([90,90,180])
    translate([-240,-15,40])    
        FPGABoardMockup();

gmTubeOffsetZ =80;
for (offsetX = [-10:10:10])
    for (offsetY = [-10:10:10])
        translate([offsetX,offsetY, gmTubeOffsetZ])
            gmTube();


module make_complete_rotor(){
    rotorStatorZDistance = 5;

    translate([0,0,20]){
        color("Yellow"){
            // rear rotor
            make_generic_rotor_to_stator_connector();

            // front rotor
            translate([0,0,rotorLength])
                make_generic_rotor_to_stator_connector();

            // TODO this doesn't hold HV connector
            translate([0,0,20])
                highVoltageGeneratorHolder();

            translate([0,0,30])
                highVoltageGMConnectorHolder();
            translate([0,0,60])
                highVoltageGMConnectorHolder();
                    }

        color("MediumSlateBlue")
            linear_extrude(height = rotorLength, convexity = 10, twist = 0) 
                rotorBars();
    }
}
 
module make_complete_stator(){    
    translate([-pillarHeight,0,0]){
        color("Orange"){
            make_generic_stator();

            translate([0,0,320])
                make_generic_stator();
        }
           
        color("Silver")               
            linear_extrude(height = 320, convexity = 10, twist = 0)     
                statorBars();        
    }
}

make_complete_rotor();
make_complete_stator();
