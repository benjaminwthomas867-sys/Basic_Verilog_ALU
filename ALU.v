module alu (
  input [7:0] A, B,           // operands
  input [2:0] opcode,         // operation input: 8 total
  output reg [7:0] X,         // output variable
  output reg [2:0] flags      // carry, overflow, negative output flags.
);
    // temporary variable to use for calculations.
    reg [8:0] temp_result;
    always @(*) begin
        temp_result = 9'd0; //9 bits so that overflow can be registered.
        X = 8'd0;
        flags = 4'b0000;

        case (opcode)
                3'b000: begin // code for addition
                temp_result = A + B;
                X = temp_result[7:0];         
                flags[2] = temp_result[8]; //sets the carry flag   
                flags[1] = (A[7] == B[7]) && (X[7] != A[7]); //sets the overflow flag
            end
            
            3'b001: begin // code for subtraction
                  temp_result = A - B;
                  X = temp_result[7:0];         
                  flags[2] = temp_result[8];    // carry flag
                  flags[1] = (A[7] != B[7]) && (X[7] != A[7]); // overflow flag
            end
          
            3'b010: X = A & B;  
            3'b011: X = A | B;  
            3'b100: X = A ^ B; 
            3'b101: X = ~A;     
            3'b110: X = A << 1; 
            3'b111: X = A >> 1; 
            default: X = 8'd0;  
        endcase


      flags[0] = X[7]; // signed flag
    end

endmodule
