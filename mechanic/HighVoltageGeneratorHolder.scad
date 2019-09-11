include <RotorHandler.scad>;

//highVoltageGeneratorHolder();
//highVoltageGeneratorScrew();

module highVoltageGeneratorHolder() {
	pcbWidth = 50;
	pcbHeight = 45;

	holderAroundPCBThickness = 5;
	
	linear_extrude(height = 5, convexity = 10, twist = 0) 
		union(){
			difference(){
				union(){
					translate([-pcbHeight/2 - holderAroundPCBThickness, -pcbWidth/2 - holderAroundPCBThickness, 0])
						square([pcbHeight + (2*holderAroundPCBThickness), pcbWidth + (2*holderAroundPCBThickness)]);
					pillars();
					rotorHandler();
				}
				 translate([-pcbHeight/2, -pcbWidth/2, 0])
					square([pcbHeight, pcbWidth]);
			}

			highVoltageGeneratorScrews(pcbHeight, pcbWidth);
		}
}

module highVoltageGeneratorScrews(pcbHeight, pcbWidth){
	// impossible to use loop because PCB is rectangular

	// bottom left
	translate([-pcbHeight/2, -pcbWidth/2, 0])
		highVoltageGeneratorScrew();

	// bottom right
	translate([-pcbHeight/2, pcbWidth/2, 0])
		rotate([0,0,270])
		highVoltageGeneratorScrew();

	// top left
	translate([pcbHeight/2, -pcbWidth/2, 0])
		rotate([0,0,90])
		highVoltageGeneratorScrew();

	// top right
	translate([pcbHeight/2, pcbWidth/2, 0])
		rotate([0,0,180])
		highVoltageGeneratorScrew();
}

module highVoltageGeneratorScrew(){
	radiusOfHolder = 11;
	radiusOfHole = 3.5/2;
	holeToEgeDistans = 5;

	difference(){
		intersection (){
			circle(radiusOfHolder);
			square(radiusOfHolder);
		}
		translate([holeToEgeDistans, holeToEgeDistans, 0])
			circle(radiusOfHole);
	}
}
