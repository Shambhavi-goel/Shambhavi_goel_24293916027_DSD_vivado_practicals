`timescale 1ns / 1ps

module tb_mux_2x1(

    );
    
reg I0, I1, S;
wire Y;
integer i,j,k;

mux_2x1 uut(I0, I1, S, Y);

initial begin
for(i=0; i<2; i=i+1)
begin 
S= i;
   for(j=0; j<2; j=j+1)
   begin 
   I0= j;
    for(k=0; k<2; k=k+1)
    begin 
    I1= k;
    #10;
    end
   end
  end
  $finish;  
end
endmodule
