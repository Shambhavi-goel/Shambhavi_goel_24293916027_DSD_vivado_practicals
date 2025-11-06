`timescale 1ns / 1ps

module tb_priority_encoder_4to2_using_gates(

    );
    
reg D0,D1,D2,D3;
wire A,B,V;


priority_encoder_4to2_using_gates uut(D0,D1,D2,D3,A,B,V);

initial 
    begin
    D0=0; D1=0;D2=0;D3=0;
    #10
    D0=1; D1=0;D2=0;D3=0;
    #10
    D0=0; D1=1;D2=0;D3=0;
    #10
    D0=0; D1=0;D2=1;D3=0;
    #10
    D0=0; D1=0;D2=0;D3=1;
    #10
    D0=1; D1=1;D2=0;D3=0;
    #10
    D0=1; D1=1;D2=1;D3=0;
    #10
    D0=1; D1=1;D2=1;D3=1;
    #10
    D0=1; D1=0;D2=1;D3=0;
    #10    
    D0=1; D1=0;D2=0;D3=1;
    #10
    D0=1; D1=0;D2=1;D3=1;
    #10
    D0=0; D1=0;D2=1;D3=1;
    #10
    D0=0; D1=1;D2=1;D3=1;
    #10
    D0=1; D1=1;D2=0;D3=1;
    #10
    D0=0; D1=1;D2=1;D3=0;
    #10
    D0=0; D1=1;D2=0;D3=1;
    #10
    
  $finish;
  end

endmodule