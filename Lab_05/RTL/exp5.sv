`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 00:21:15
// Design Name: 
// Module Name: exp5
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


module exp5(
    input logic [3:0] digit,   // 4-bit input (Hex digit 0-F)
    input logic [2:0] display_select,   // 3-bit input (select which display)
    output logic [6:0] segments,  // 7-segment display output
    output logic [7:0] anode_control    // Active-low anode control
);

    // Seven-segment decoder (behavioral approach)
    always_comb begin
        case (digit)
            4'h0: segments = 7'b0000001;
            4'h1: segments = 7'b1001111;
            4'h2: segments = 7'b0010010;
            4'h3: segments = 7'b0000110;
            4'h4: segments = 7'b1001100;
            4'h5: segments = 7'b0100100;
            4'h6: segments = 7'b0100000;
            4'h7: segments = 7'b0001111;
            4'h8: segments = 7'b0000000;
            4'h9: segments = 7'b0000100;
            4'hA: segments = 7'b0001000;
            4'hB: segments = 7'b1100000;
            4'hC: segments = 7'b0110001;
            4'hD: segments = 7'b1000010;
            4'hE: segments = 7'b0110000;
            4'hF: segments = 7'b0111000;
            default: segments = 7'b1111111; // All segments off (safety)
        endcase
    end

    // Display selector (activates one display at a time)
    always_comb begin
        anode_control = 8'b11111111;  // Default: All displays off
        case (display_select)
            3'b000: anode_control = 8'b11111110; // Enable Display 0
            3'b001: anode_control = 8'b11111101; // Enable Display 1
            3'b010: anode_control = 8'b11111011; // Enable Display 2
            3'b011: anode_control = 8'b11110111; // Enable Display 3
            3'b100: anode_control = 8'b11101111; // Enable Display 4
            3'b101: anode_control = 8'b11011111; // Enable Display 5
            3'b110: anode_control = 8'b10111111; // Enable Display 6
            3'b111: anode_control = 8'b01111111; // Enable Display 7
            default: anode_control = 8'b11111111; // All off (safety)
        endcase
    end

endmodule

