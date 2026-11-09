module TB;
reg[0:0] a;
reg[0:0] b;
reg[0:0] cin;
wire[0:0] cout;
wire[0:0] sum;



FA uut (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);

initial begin
integer i;
for(i = 0; i<8;i=i+1) begin
{a,b,cin} = i;
#10;
$display("sum = %d cout = %d",sum, cout);
end

end
endmodule;