
// TDO DRY
pillarWidth = 5;
pillarHeight = 145;

module pillarx(width, height) {
    square([width, height], center=false);
}

module pillarsx(width, height){ 
    for (angle = [0:60:360])
        rotate([0,0,angle])
        translate([0,(-height / 2),0])
        pillarx(width, height);
}


module gmHolder() {
	pcbWidth = 50;
	pcbHeight = 45;

	holderAroundPCBThickness = 5;

	color("Gold")
		linear_extrude(height = 3, convexity = 10, twist = 0) 
			union(){
				translate([-(pcbWidth + holderAroundPCBThickness)/2, -(pcbHeight + holderAroundPCBThickness)/2, 0])
					square(pcbHeight + (2*holderAroundPCBThickness), pcbWidth + (2*holderAroundPCBThickness));
				pillarsx(pillarWidth, pillarHeight);
			}
    
   // }




			//difference(){
				
			//	translate([holderAroundPCBThickness, holderAroundPCBThickness, 0])
			//		square(pcbHeight, pcbWidth);
		//	}
    

}

gmHolder();
