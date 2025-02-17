`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 00:22:10
// Design Name: 
// Module Name: exp_3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module exp_3( output x,y ,
input a,s,d);
logic not_d, or_1, nand_as, xor_1;
assign not_d = ~d;
assign or_1 = a|s;
assign nand_as = ~(a&s) ;
assign xor_1 = (or_1 ^ nand_as) ;
assign y = (or_1 & xor_1) ;
assign x =(not_d ^ or_1);
endmodule 
