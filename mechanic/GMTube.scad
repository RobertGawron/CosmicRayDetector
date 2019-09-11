GMTubeBodyLength = 95;
GMTubeConnectorLength = 9;

GMTubeBodyRadius = 5;
GMTubeConnectorRadius = 2;

//gmTube();

module gmTube()
{
// body
translate([0,0,GMTubeBodyLength/2 + GMTubeConnectorLength])
	linear_extrude(height = GMTubeBodyLength, center = true, convexity = 10, twist = 0)
		circle(GMTubeBodyRadius);

// front electrode
translate([0,0,GMTubeConnectorLength/2])
	linear_extrude(height = GMTubeConnectorLength, center = true, convexity = 10, twist = 0)
		circle(GMTubeConnectorRadius);

// rear electrode
translate([0,0,GMTubeBodyLength + GMTubeConnectorLength + GMTubeConnectorLength/2])
	linear_extrude(height = GMTubeConnectorLength, center = true, convexity = 10, twist = 0)
		circle(GMTubeConnectorRadius);
}
