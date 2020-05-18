//16 bit counter 

module counter_16b (
input clock,
output reg [15:0] count,
input resetn,
input enable
);

always @ (posedge clock) 
begin
	if (resetn == 0)
		count <= 16'd0;
	else if (enable == 1 && count < 16'd9999)
		count <= count + 1;
end
		
endmodule
	
		

