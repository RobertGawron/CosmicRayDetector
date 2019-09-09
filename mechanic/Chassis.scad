include <RotorBasic.scad>;
include <StatorBasic.scad>;
include <GMHolder.scad>;

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

translate([0,0,37])
	gmHolder();


rotate([0,90,0])
	for (offset = [0:10:30])
		translate([80,-120,offset-20])
			HighVoltageGMConnector();

rotate([0,90,0])
	for (offset = [0:10:30])
		translate([-60,-140,offset-20])
			CosmicRayDetector();

rotate([90,90,0])
	translate([-160,-140,40])
		FPGABoardMockup();

// TODO
rotorPillarWidth = 6;
rotorPillarHeight = 45;

rotorLength = 320;

module rotorComplete(){
	translate([0,0,20]){
		color("Aquamarine"){
			// rear rotor
			rotorBasic();

			// front rotor
			translate([0,0,rotorLength])
				rotorBasic();
		}

		color("MediumSlateBlue")
            linear_extrude(height = rotorLength, convexity = 10, twist = 0) 
                rotorBars();
	}
}

module statorComplete(){	
	translate([-50,0,0]){
		color("Orange"){
			statorBasic();
		}

		translate([0,0,350])
			statorBasic();
		   
		color("Silver")               
			linear_extrude(height = 350, convexity = 10, twist = 0) 	
				statorBars();		
	}
}

rotorComplete();
statorComplete();
