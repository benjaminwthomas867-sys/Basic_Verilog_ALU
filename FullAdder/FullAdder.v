module FA (input a, b, cin, output sum, cout);
wire AandB, AxorB,AxorB_Carry;


xor xo1(AxorB,a,b);
xor xo2(sum,AxorB,cin);
and a1(AandB,a,b);
and a2(AxorB_Carry,cin, AxorB);
or o1(cout,AxorB_Carry,AandB);

endmodule;

module eightbitFA (input [7:0] a,b, [0:0] cin, output [7:0] sum, [0:0] cout);
wire c1,c2,c3,c4,c5,c6,c7;

FA f0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c1));
FA f1(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.cout(c2));
FA f2(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.cout(c3));
FA f3(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.cout(c4));
FA f4(.a(a[4]),.b(b[4]),.cin(c4),.sum(sum[4]),.cout(c5));
FA f5(.a(a[5]),.b(b[5]),.cin(c5),.sum(sum[5]),.cout(c6));
FA f6(.a(a[6]),.b(b[6]),.cin(c6),.sum(sum[6]),.cout(c7));
FA f7(.a(a[7]),.b(b[7]),.cin(c7),.sum(sum[7]),.cout(cout[0]));


endmodule