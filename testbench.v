`timescale 1ns/1ps

module alu_tb;

reg [1:0] A, B;
reg [2:0] sel;
wire [1:0] result;

alu_2bit uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial 
begin
    $dumpfile("dump.vcd");
    $dumpvars(0, alu_tb);

    A = 2'b11; 
    B = 2'b01;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;

    $finish;
end

endmodule