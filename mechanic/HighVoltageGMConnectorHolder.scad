include <Constants.scad>;
include <GenericRotorMountingPoint.scad>;

//highVoltageGMConnectorHolder();

module highVoltageGMConnectorHolder()
{
	pcbWidth = 70;
	pcbHeight = 30;// height of assembled PCB is 10cm, there are three stacked
	holderAroundPCBThickness = 5;

	linear_extrude(height = 5, convexity = 10, twist = 0) 
		union(){
		translate([-pcbHeight/2 - holderAroundPCBThickness, -pcbWidth/2 - holderAroundPCBThickness, 0])
						square([pcbHeight + (2*holderAroundPCBThickness), pcbWidth + (2*holderAroundPCBThickness)]);
		rotorHandler();
	}
}
