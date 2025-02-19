`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 23:53:58
// Design Name: 
// Module Name: project_4
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


module project_4(
input [1:0] a,
input [1:0] b,
output logic r,
output logic g,
output logic blue
    );
always_comb
    begin
    r = (~b[0] & ~b[1]) | (a[0] & a[1]) | (a[1] & ~b[0]) | (a[0] & ~b[0]) | (a[0] & ~b[1]); 
    g = (b[1] & b[0]) | (~a[0] & ~a[1]) | (~a[0] & b[0]) | (~a[1] & b[0]) | (~a[0] & b[1]);
    blue = (~a[1] & b[1]) | (a[1] & ~b[1]) | (a[0] & ~b[0]) | (~a[0] & b[0]); 
end
endmodule