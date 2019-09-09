include <RotorBasic.scad>;
include <StatorBasic.scad>;
// TODO
rotorPillarWidth = 6;
rotorPillarHeight = 45;
screwDiameter = 2;


color("Aquamarine"){
	// rear rotor
	rotorBasic();

	// front stator
	translate([0,0,320])
		rotorBasic();
}

color("Orange"){
	statorBasic();

	translate([0,0,350])
		statorBasic();
}


color("MediumSlateBlue")
linear_extrude(height = 350, convexity = 10, twist = 0) rotorScrews();

