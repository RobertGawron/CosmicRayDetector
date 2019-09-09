module statorMountingPoints(pillarHeight){
for (angle = [0:120:360])
    rotate([0,0,angle])
	translate ([pillarHeight,0,0])
	circle(12);
}

module pillar(width, height){
    square([width, height], center=false);
}

module pillars(width, height){ 
    for (angle = [0:120:360])
        rotate([0,0,angle])
        translate([0,(-height / 2),0])
        pillar(width, height);
}


// public

module statorBasic(){
	pillarWidth =10;
	pillarHeight = 80;
    
    linear_extrude(height = 10, convexity = 10, twist = 0) 
		pillars(pillarHeight, pillarWidth);
    
	linear_extrude(height = 10, convexity = 10, twist = 0) 
		statorMountingPoints(pillarHeight);
}

