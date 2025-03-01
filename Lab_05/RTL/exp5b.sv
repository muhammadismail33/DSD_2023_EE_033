`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 19:14:56
// Design Name: 
// Module Name: exp5b
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
//////////////////////////////////////////////////////////////////////////////////


module exp5b(
  input [3:0] digit,  
  input [2:0] sel,  
  output logic [6:0] segments,  
  output logic [7:0] anode_control    
);

  logic a, b, c, d;
  
  assign a = digit[3];  
  assign b = digit[2];
  assign c = digit[1];
  assign d = digit[0];

  always_comb begin
    segments[0] = (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | (a & b & ~c & d) | (a & ~b & c & d);
    segments[1] = (b & c & ~d) | (a & c & d) | (a & b & ~d) | (~a & b & ~c & d);
    segments[2] = (a & b & ~d) | (a & b & c) | (~a & ~b & c & ~d);
    segments[3] = (b & c & d) | (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | (a & ~b & c & ~d);
    segments[4] = (~a & d) | (~b & ~c & d) | (~a & b & ~c);
    segments[5] = (~a & ~b & d) | (~a & ~b & c) | (~a & c & d) | (a & b & ~c & d);
    segments[6] = (~a & ~b & ~c) | (~a & b & c & d) | (a & b & ~c & ~d);
  
    anode_control[0] = sel[2] | sel[1] | sel[0];
    anode_control[1] = sel[2] | sel[1] | ~sel[0];
    anode_control[2] = sel[2] | ~sel[1] | sel[0];
    anode_control[3] = sel[2] | ~sel[1] | ~sel[0];
    anode_control[4] = ~sel[2] | sel[1] | sel[0];
    anode_control[5] = ~sel[2] | sel[1] | ~sel[0];
    anode_control[6] = ~sel[2] | ~sel[1] | sel[0];
    anode_control[7] = ~sel[2] | ~sel[1] | ~sel[0];
  end
  
endmodule

