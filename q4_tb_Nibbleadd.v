module nibbleadd_tb();

reg [7:0]A; //8 bit wide input "A"
reg [7:0]B;
reg ctrl;
wire [4:0]q;
    
nibbleadd n1(A,B,ctrl,q);

initial begin
    //initialize values of A,B,CTRL    
    #0 A[7:0] = 11001010;
    #0 B[7:0] = 10101101;
    #0 ctrl <= 0;
    
    //case 1
    #10 A[7:0] = 11111111; //switch A to "11111111" 10 time units after last line of code
    #0 B[7:0] = 10000000;
    
    //case 2
    #10 A[7:0] = 00000000; //switch A to "00000000" 10 time units after last line of code
    #0 B[7:0] = 10101010;
    
    //case 3
    #10 A[7:0] = 01100010; //switch A to "00000000" 10 time units after last line of code
    #0 B[7:0] = 00000000;
    
    //case 4
    #10 ctrl <= 1; //switch ctrl input to "1" 30 time units after last line of code
    #0 A[7:0] = 00000000; //switch A to "00000000" 10 time units after last line of code
    #0 B[7:0] = 10101010;
    
    //case 5
    #10 A[7:0] = 11010101; 
    #0 B[7:0] = 10101010;
    
    //case 6
    #10 A[7:0] = 00000000; //switch A to "00000000" 10 time units after last line of code
    #0 B[7:0] = 01011001;
    
    //case 6
    #10 A[7:0] = 11111111; //switch A to "00000000" 10 time units after last line of code
    #0 B[7:0] = 11111111;
    
    //stop simulation
    #10 $stop; //stop simulation 30 time units after previous line of code
    
end
   
endmodule
    