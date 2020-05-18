
module Stopwatch_CNTRL (
input button,
input reset,
output reg enable
); 

always @(negedge reset or negedge button)
begin
	if (reset == 0) enable = 0;
	else enable = !enable;
	
end

endmodule 