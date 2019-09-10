include <RotorBasic.scad>;
include <StatorBasic.scad>;
include <HighVoltageGeneratorHolder.scad>;
include <HighVoltageGMConnectorHolder.scad>;
include <GMTube.scad>;


module FPGABoardMockup(){
	include <PCBModelsFromKiCad/FPGABoardMockup.scad>;
}

module CosmicRayDetector(){
	include <PCBModelsFromKiCad/CosmicRayDetector.scad>;
}
module HighVoltageGMConnector(){
	include <PCBModelsFromKiCad/HighVoltageGMConnector.scad>;
}

module HighVoltageGenerator(){
	include <PCBModelsFromKiCad/HighVoltageGenerator.scad>;
}
rotate([0,0,90])
translate([145,-92,40])
	HighVoltageGenerator();

rotate([0,90,0])
	for (offset = [0:10:30])
		translate([90,-120,offset-20])
			HighVoltageGMConnector();

translate([0,0,50])
	highVoltageGMConnectorHolder();
translate([0,0,80])
	highVoltageGMConnectorHolder();


rotate([0,90,0])
	for (offset = [0:10:30])
		translate([-14,-140,offset-20])
			CosmicRayDetector();


translate([-120,-40,100])
	rotate([90,90,0])
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

			translate([0,0,20])
				highVoltageGeneratorHolder();
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
