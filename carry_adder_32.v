module carry_adder( input b1, input b2, input cin, output wire q0, output wire cout );

	wire g, h; // nodos internos
// hola =P	
	
	// para el Q0
	assign g =  b1^b2;
	assign q0 =  g^cin;
	
	// para el cout
	assign cout = (b1 & b2) | (b1 & cin) | (b2 & cin);

endmodule

module sumador_bits(input [31:0] b1, b2, input cin, output [31:0] q, output cout );



	wire cout1, cout2, cout3, cout4, cout5, cout6, cout7, cout8, cout9, cout10, cout11, cout12, cout13, cout14, cout15, cout16, cout17, cout18, cout19, cout20, cout21, cout22, cout23, cout24, cout25, cout26, cout27, cout28, cout29, cout30, cout31, cout;

	carry_adder sum1(b1[0],  b2[0],  cin,   q[0], cout1);	
	carry_adder sum2(b1[1],  b2[1],  cout1, q[1], cout2);
	carry_adder sum3(b1[2],  b2[2],  cout2, q[2], cout3);
	carry_adder sum4(b1[3],  b2[3],  cout3, q[3],  cout4);
	carry_adder sum5(b1[4],  b2[4],  cout3, q[4],  cout5);	
	carry_adder sum6(b1[5],  b2[5],  cout3, q[5],  cout6);
	carry_adder sum7(b1[6],  b2[6],  cout3, q[6],  cout7);
	carry_adder sum8(b1[7],  b2[7],  cout3, q[7],  cout8);
	carry_adder sum9(b1[8],  b2[8],  cout3, q[8],  cout9);
	carry_adder sum10(b1[9],  b2[9],  cout3, q[9],  cout10);
	carry_adder sum11(b1[10], b2[10], cout3, q[10], cout11);
	carry_adder sum12(b1[11], b2[11], cout3, q[11], cout12);
	carry_adder sum13(b1[12], b2[12], cout3, q[12], cout13);
	carry_adder sum14(b1[13], b2[13], cout3, q[13], cout14);
	carry_adder sum15(b1[14], b2[14], cout3, q[14], cout15);
	carry_adder sum16(b1[15], b2[15], cout3, q[15], cout16);
	carry_adder sum17(b1[16], b2[16], cout3, q[16], cout17);
	carry_adder sum18(b1[17], b2[17], cout3, q[17], cout18);
	carry_adder sum19(b1[18], b2[18], cout3, q[18], cout19);
	carry_adder sum20(b1[19], b2[19], cout3, q[19], cout20);
	carry_adder sum21(b1[20], b2[20], cout3, q[20], cout21);
	carry_adder sum22(b1[21], b2[21], cout3, q[21], cout22);
	carry_adder sum23(b1[22], b2[22], cout3, q[22], cout23);
	carry_adder sum24(b1[23], b2[23], cout3, q[23], cout24);
	carry_adder sum25(b1[24], b2[24], cout3, q[24], cout25);
	carry_adder sum26(b1[25], b2[25], cout3, q[25], cout26);
	carry_adder sum27(b1[26], b2[26], cout3, q[26], cout27);
	carry_adder sum28(b1[27], b2[27], cout3, q[27], cout28);
	carry_adder sum29(b1[28], b2[28], cout3, q[28], cout29);
	carry_adder sum30(b1[29], b2[29], cout3, q[29], cout30);
	carry_adder sum31(b1[30], b2[30], cout3, q[30], cout31);
	carry_adder sum32(b1[31], b2[31], cout3, q[31], cout);







endmodule


// Para corroborar 4 adder... de 4 bit...
// Stimulus Block

module stimulus;
reg [31:0] b1;
reg [31:0] b2;
reg cin;

wire  [31:0] q;
wire cout;

sumador_bits SUMA(b1, b2, cin, q, cout);

  initial
  begin
 //   #0 b1[0]=1; b1[1]=1; b1[2]=1; b1[3]=1; b2[0]=1; b2[1]=1; b2[2]=1; b2[3]=1;  cin=1;
    #0 	b1=32'b 00000000000000000000000000000001; b2=32'b00000000000000000000000000000001; cin=0'b1;
    #1 	b1=32'b 00000000000000000000000000000000; b2=32'b00000000000000000000000000000011; cin=0'b1;   
  end



//Monitor the outputs

initial
$monitor($time, " output q = %d", q);
endmodule









// Para corroborar 1 adder... de 1 bit...
//// Stimulus Block
//module stimulus;
//reg b1;
//reg b2;
//reg cin;
//
//wire q;
//wire cout;
//
//carry_adder SUMADOR(b1, b2, cin, q, cout);
//
//initial
//begin
//	
//	b1 = 1'b0;
//	b2 = 1'b0;
//	cin = 1'b1;
//
//	#5 b1 = 1'b1;
//	#5 b2 = 1'b1;
//	#5 b1 = 1'b0;
//	#5 b2 = 1'b0;
//	#5 $finish;
//end
//
////Monitor the outputs
//
//initial
//$monitor($time, " output q = %d", q);
//endmodule
