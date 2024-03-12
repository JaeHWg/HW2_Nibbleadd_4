//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output [4:0]q
);
    

//YOUR CODE HERE
/*for initialization of vector data type, put [] in front of data name.
for usage of vector data type, put[] behind data name*/

//cannot directly use output"q" in always statement, so must register and assign new variable to represent
reg [4:0]Q; //register new 5 bit wide variable Q
assign q=Q; //assign q to varible Q

//assign sum_low = A[3:0] + B[3:0]; //array A of 4 bits + array B of 4 bits
//assign sum_high = A[7:4] + B[7:4]; 

always @(A, B, ctrl) begin
    case(ctrl)
        0 : Q = A[3:0] + B[3:0]; //if ctrl = 0, Q = sum of A lower 4 bits and B lower 4 bits
        1 : Q = A[7:4] + B[7:4];
        default : Q = 0; //case must always have default, akin to "else" for condition to fall back on
    endcase

end

endmodule