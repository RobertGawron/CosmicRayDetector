module Firmware(
	input x,
	input y,
	output z);
 
	assign  z = x & y;

endmodule



module stimulus;

    reg x;
    reg y;
    wire z;
    
    comparator uut (
        .x(x),
        .y(y),
        .z(z)
    );
        
        
    initial begin
        $monitor("x=%d,y=%d,z=%d \n",x,y,z);
    end
    
endmodule

