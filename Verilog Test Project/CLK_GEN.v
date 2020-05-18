//implementation of a counter-based clock generator
//INPUT: 50MHz clock
//OUTPUT: 5MHz, 1MHz, 1KHz, 100Hz, and 10Hz clocks

module CLK_GEN (
input clk_50MHz,
output reg clk_5MHz,
output reg clk_1MHz,
output reg clk_1KHz,
output reg clk_100Hz,
output reg clk_10Hz
);

integer clk_5MHz_counter;
integer clk_1MHz_counter;
integer clk_1KHz_counter;
integer clk_100Hz_counter;
integer clk_10Hz_counter;

always @ (posedge clk_50MHz)
begin
	
	//10MHz
	if (clk_5MHz_counter < 5) clk_5MHz_counter <= clk_5MHz_counter + 1;
	else begin
		clk_5MHz_counter <= 0;
		clk_5MHz <= !clk_5MHz;
	end
	
	//1MHz
	if (clk_1MHz_counter < 25) clk_1MHz_counter <= clk_1MHz_counter + 1;
	else begin
		clk_1MHz_counter <= 0;
		clk_1MHz <= !clk_1MHz;
	end
	
	//1KHz
	if (clk_1KHz_counter < 25000) clk_1KHz_counter <= clk_1KHz_counter + 1;
	else begin
		clk_1KHz_counter <= 0;
		clk_1KHz <= !clk_1KHz;
	end
	
	//100Hz
	if (clk_100Hz_counter < 250000) clk_100Hz_counter <= clk_100Hz_counter + 1;
	else begin
		clk_100Hz_counter <= 0;
		clk_100Hz <= !clk_100Hz;
	end
	
	//10Hz
	if (clk_10Hz_counter < 2500000) clk_10Hz_counter <= clk_10Hz_counter + 1;
	else begin
		clk_10Hz_counter <= 0;
		clk_10Hz <= !clk_10Hz;
	end
end

endmodule
	
