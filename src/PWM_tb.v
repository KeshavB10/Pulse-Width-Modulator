module PWM_tb;
  reg clkin;
  reg reset;
  reg [7:0]duty_cycle;
  wire out;
  
  PWM dut( 
    .clkin(clkin), 
    .reset(reset), 
    .duty_cycle(duty_cycle),
    .out(out)
  ); //instantiating
  
  //clock generation
  initial begin
    clkin=0;
    forever #500 clkin=~clkin;
  end
  
  initial begin
    
     // Set up waveform dumping
    $dumpfile("PWM_waveform.vcd");  // Specify the name of the VCD file
    $dumpvars(0, PWM_tb);           // Dump all variables in the testbench module
    
    $monitor ("Time= %0t | Duty Cycle= %d | Output Clock=%b", $time, duty_cycle, out);
    
    reset=1;
    duty_cycle=8'b0;
    #10 reset=0;
    
  	#50 duty_cycle=8'd64;  //25% Duty Cycle
  	//#100 duty_cycle=8'd128; //50% Duty Cycle
  	//#100 duty_cycle=8'd192; //75% Duty Cycle
  	//#100 duty_cycle=8'd255; //100% Duty Cycle
  
  	#1000000 $finish;
  end
endmodule

    
   
      
