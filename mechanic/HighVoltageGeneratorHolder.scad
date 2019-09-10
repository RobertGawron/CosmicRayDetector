include <RotorHandler.scad>;

//highVoltageGeneratorHolder();

module highVoltageGeneratorHolder() {
	pcbWidth = 50;
	pcbHeight = 45;

	holderAroundPCBThickness = 5;

	color("Gold")
		linear_extrude(height = 5, convexity = 10, twist = 0) 
			union(){
				difference(){
					union(){
						translate([-(pcbWidth + holderAroundPCBThickness)/2, -(pcbHeight + holderAroundPCBThickness)/2, 0])
							square(pcbHeight + (2*holderAroundPCBThickness), pcbWidth + (2*holderAroundPCBThickness));
						pillars();
						rotorHandler();
					}
					translate([-(pcbWidth - holderAroundPCBThickness)/2, -(pcbHeight - holderAroundPCBThickness)/2, 0])
						square(pcbHeight, pcbWidth);
				}
			}
}
