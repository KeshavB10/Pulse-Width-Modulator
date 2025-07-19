
module PWM ( clkin, reset, duty_cycle, out);
  input clkin;
  input reset;
  input [7:0]duty_cycle;
  output reg out;
  
  //designed to have 8 bit precision
  //which implies duty_cycle=255 implies 100% and 127 implies 50%
  
  reg [7:0] counter; 
  
  //counter variable to compare the clock value and duty cycle
  
  always @(posedge clkin or posedge reset) begin
    if (reset==1) begin
      counter<=8'b0;       		//reset counter
    end
    else begin
      counter<= counter + 8'b1; //increment counter
    end
  end
  
  always @(posedge clkin or posedge reset) begin
    if (reset==1) begin
      out<= 1'b0;                //setting output clock to 0
    end
    else begin
      out<= (counter<duty_cycle) ? 1'b1:1'b0 ;
    end				 //if counter less than duty cycle, clock is high
  end
endmodule
