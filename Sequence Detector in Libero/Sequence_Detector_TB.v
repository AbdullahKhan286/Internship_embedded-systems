module Moore_Seq_TB;

    reg IN, R, CK;
    wire [7:0] OUT;

    Moore_Seq dut (
        .IN(IN),
        .R(R),
        .CK(CK),
        .OUT(OUT)
    );

    // Clock generation
    always #5 CK = ~CK;

    // Stimulus generation
    initial begin
        // Reset the circuit
        CK=1;
        R = 1;
        IN = 0;
        #10 R = 0;

        // Test case 1
        #10 IN = 1;
        #10 IN = 0;
        #10 IN = 1;
        #10 IN = 1;
        
        #10 IN = 0;
        
        #10 IN = 1;
        #10 IN = 0;
        #10 IN = 1;
        #10 IN = 1;
        
        
        
        
        

        // End simulation
        #10 $finish;
    end

    // Monitor
    always @(posedge CK)
        $display("OUT = %b", OUT);

endmodule
