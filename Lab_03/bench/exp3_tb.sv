`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 00:29:10
// Design Name: 
// Module Name: exp3_tb
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 00:29:10
// Design Name: 
// Module Name: exp3_tb
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
`timescale 1ns / 1ps

module exp2_tb();
  logic P, Q, R; 
  logic M, N; 

  exp_3 tb(
    .a(P),
    .b(Q),
    .c(R),
    .x(M),
    .y(N)
  );

initial
    begin
    P = 0; Q = 0; R = 0; #10;
    P = 0; Q = 0; R = 1; #10;
    P = 0; Q = 1; R = 0; #10;
    P = 0; Q = 1; R = 1; #10;
    P = 1; Q = 0; R = 0; #10;
    P = 1; Q = 0; R = 1; #10;
    P = 1; Q = 1; R = 0; #10;
    P = 1; Q = 1; R = 1; #10;
    $stop;
  end

  
  initial 
  begin
    $monitor("P = %b Q = %b R = %b | M = %b N = %b", P, Q, R, M, N);
   end
endmodule