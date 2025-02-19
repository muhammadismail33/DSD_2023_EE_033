`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 23:56:06
// Design Name: 
// Module Name: project_4tb
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


module project_4tb;
    logic [1:0] a;
    logic [1:0] b;
    logic r;
    logic g;
    logic blue;

    project_4 uut (
        .a(a),
        .b(b),
        .r(r),
        .g(g),
        .blue(blue)
    );
        initial begin        
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0; #10;
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #10;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #10;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #10;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 0; #10;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 1; #10;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 0; #10;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 1; #10;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 0; #10;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 1; #10;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 0; #10;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 1; #10;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 0; #10;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 1; #10;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 0; #10;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 1; #10;
        $stop;
    end
initial begin
        $monitor("a=%b%b, b=%b%b, red=%b,green=%b,blue=%b", a[0],a[1], b[0],b[1], r,g,blue);
end
endmodule