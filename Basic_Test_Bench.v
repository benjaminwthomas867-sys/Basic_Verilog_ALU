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
        A = 8'd3;   

        opcode = 3'b110;
        #10;    // basic test for left shift
        $display("Result = ", X);

        A = 8'd1;    //test for AND gate function
        B = 8'd0;
        opcode = 3'b010;
        #10;
        $display("Result =", X);

        
        A = 8'd1;   
        B = 8'd1; 
        opcode = 3'b010;
        #10;
        $display("Result = ", X);
        

        A = 8'd1;   // basic test for OR
        B = 8'd0; 
        opcode = 3'b011;
        #10;
        $display("Result = ", X);

        A = 8'd1;   
        B = 8'd1; 
        opcode = 3'b011;
        #10;
        $display("Result = ", X);

        A = 8'd0;   
        B = 8'd0; 
        opcode = 3'b011;
        #10;
        $display("Result = ", X);

        
        A = 8'd1;   // basic test for XOR
        B = 8'd0; 
        opcode = 3'b100;
        #10;
        $display("Result = ", X);
        
        A = 8'd1;   
        B = 8'd1; 
        opcode = 3'b100;
        #10;
        $display("Result = ", X);

        
        A = 8'd1;   // basic test for NOT (Bit Flip)
        opcode = 3'b101;
        #10;
        $display("Result = ", X);

        
        A = 8'd3;   // basic test for Right shift
        opcode = 3'b111;
        #10;
        $display("Result = ", X);




        
        
    end

endmodule
