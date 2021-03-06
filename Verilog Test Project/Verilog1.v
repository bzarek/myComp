//example verilog code for 10 bit counter 

module counter_10b (
input clock,
output reg [9:0] count,
input resetn,
input enablen
);

always @ (posedge clock) 
begin
	if (resetn == 1'b0)
		count <= 10'd0;
	else if (enablen == 1'b0)
		count <= count + 1;
end
		
endmodule
	
		

