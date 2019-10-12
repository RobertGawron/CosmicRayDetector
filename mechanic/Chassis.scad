include <GenericRotor.scad>;
include <GenericStator.scad>;
include <HighVoltageGeneratorHolder.scad>;
include <HighVoltageGMConnectorHolder.scad>;
include <GMTube.scad>;


module FPGABoardMockup(){
    color("Green")
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


module rotorComplete(){
    rotorStatorZDistance = 5;

    translate([0,0,20]){
        color("Yellow"){
            // rear rotor
            rotorBasic();

            // front rotor
            translate([0,0,rotorLength])
                rotorBasic();

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
 
module statorComplete(){    
    translate([-pillarHeight,0,0]){
        color("Orange"){
            statorBasic();

            translate([0,0,320])
                statorBasic();
        }
           
        color("Silver")               
            linear_extrude(height = 320, convexity = 10, twist = 0)     
                statorBars();        
    }
}

rotorComplete();
statorComplete();
