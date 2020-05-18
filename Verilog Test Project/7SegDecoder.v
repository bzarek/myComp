//Decoder for seven segment display

module 7SegDecoder (
input [3:0] in
output reg [7:0] out
);

always @ (edge in)
begin
	case (in)
	4'd0  : out <= 8'b11000000;
	4'd1  : out <= 8'b11111001;
	4'd2  : out <= 8'b10100100;
	4'd3  : out <= 8'b10110000;
	4'd4  : out <= 8'b10011001;
	4'd5  : out <= 8'b10010010;
	4'd6  : out <= 8'b10000010;
	4'd7  : out <= 8'b11111000;
	4'd8  : out <= 8'b10000000;
	4'd9  : out <= 8'b10010000;
	4'd10 : out <= 8'b10001000;
	4'd11 : out <= 8'b10000111;
	4'd12 : out <= 8'b10100111;
	4'd13 : out <= 8'b10100001;
	4'd14 : out <= 8'b10000110;
	4'd15 : out <= 8'b10000111;
	endcase
end
		