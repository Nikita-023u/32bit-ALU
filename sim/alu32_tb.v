`timescale 1ns/1ps
module alu32_tb;

reg [31:0] A, B;
reg [3:0] ALU_Sel;
wire [31:0] ALU_Out;
wire CarryOut;

// Instantiate ALU
alu32 uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .CarryOut(CarryOut)
);

initial begin
    // Initialize
    A = 32'd10;
    B = 32'd5;

    // ADD
    ALU_Sel = 4'b0000;
    #10;

    // SUB
    ALU_Sel = 4'b0010;
    #10;

    // AND
    ALU_Sel = 4'b0011;
    #10;

    // OR
    ALU_Sel = 4'b0100;
    #10;

    // XOR
    ALU_Sel = 4'b0101;
    #10;

    // SLT
    ALU_Sel = 4'b0111;
    #10;

    // Shift Left
    ALU_Sel = 4'b1000;
    #10;

    // Shift Right
    ALU_Sel = 4'b1001;
    #10;

    $finish;
end

endmodule
