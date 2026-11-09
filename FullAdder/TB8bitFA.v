module TB;
reg[7:0] a;
reg[7:0] b;
reg[0:0] cin;
wire[7:0] sum;
wire[0:0] cout;

eightbitFA uut (
.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout)
);
initial begin

a = 8'd255;
b = 8'd5;
cin = 8'd0;
#10;
$display("sum =%d carry = %d",sum,cout);

a = 8'd210;
b = 8'd5;
cin = 8'd0;
#10;
$display("sum =%d carry = %d",sum,cout);

a = 8'd26;
b = 8'd5;
cin = 8'd1;
#10;
$display("sum =%d carry = %d",sum,cout);

a = 8'd255;
b = 8'd5;
cin = 8'd1;
#10;
$display("sum =%d carry = %d",sum,cout);



end


endmodule;
