module Test_Bench_For_ALU;
    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] opcode;
    
  wire [7:0] X;
    wire [3:0] flags;

  alu uut ( // instantiating alu
        .A(A),
        .B(B),
        .opcode(opcode),
        .X(X),
        .flags(flags)
    );

    initial begin

        A = 8'd5; // basic test for addition
        B = 8'd3;
        opcode = 3'b000; 
        #10;
      $display("Result = ", X);

        A = 8'd10;  //basic test for subtraction
        B = 8'd4;
        opcode = 3'b001;
        #10;
        $display("Result = ", X);
        A = 8'd3;   // basic test for left shift
        B = 8'd0; 
        opcode = 3'b110;
        #10;
        $display("Result = ", X);
    end

endmodule
