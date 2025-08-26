// 32-bit ALU
module alu32(
    input  [31:0] A, B,
    input  [3:0] ALU_Sel, // ALU control signals
    output reg [31:0] ALU_Out,
    output reg CarryOut
);

always @(*) begin
    CarryOut = 0; // default
    case(ALU_Sel)
        4'b0000: ALU_Out = A + B;             // ADD
        4'b0001: {CarryOut, ALU_Out} = A + B; // ADD with carry
        4'b0010: ALU_Out = A - B;             // SUB
        4'b0011: ALU_Out = A & B;             // AND
        4'b0100: ALU_Out = A | B;             // OR
        4'b0101: ALU_Out = A ^ B;             // XOR
        4'b0110: ALU_Out = ~(A | B);          // NOR
        4'b0111: ALU_Out = (A < B) ? 32'd1 : 32'd0; // SLT
        4'b1000: ALU_Out = A << 1;            // Shift left
        4'b1001: ALU_Out = A >> 1;            // Shift right
        default: ALU_Out = 32'd0;
    endcase
end

endmodule
