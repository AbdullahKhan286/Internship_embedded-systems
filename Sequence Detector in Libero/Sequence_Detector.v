module Moore_Seq (IN, OUT, R, CK);
	
	input reg IN, R, CK;
	output [7:0] OUT;
	reg [7:0] OUT;
	parameter A = 0, B = 1, C = 2, D = 3, E=5;
	reg [2:0] PS, NS;

	always @(posedge CK, R)
		if (R)
			PS <= A;
		else
			PS <= NS;
	always @(PS or IN)
		case (PS)
			A: begin
				OUT <= 8'b01010101;
				NS <= IN?B:A;
			end
			B: begin
				OUT <= 8'b01010101;
				NS <= IN?A:C;
			end
			C: begin
				OUT <= 8'b01010101;
				NS <= IN?D:A;
			end
            D: begin
				NS <= IN?E:A;
                OUT <= 8'b01010101;
			end
            E: begin
				NS <= IN?B:A;
                OUT <= 8'b10101010;
			end
		endcase

endmodule
