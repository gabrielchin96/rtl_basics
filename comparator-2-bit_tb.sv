// Code your testbench here
// or browse Examples
// The 'timescale directive specifies that 
// The simulation time unit is 1ns and
// The simulation timestep is 10ps

`timescale 1 ns/10 ps

module eq2_tb;
  //signal declaration
  logic [1:0] test_in0, test_in1;
  logic test_out;
  
  //instantiate the Circuit under test
  eq2 uut (.a(test_in0), .b(test_in1), .aeqb(test_out));
  
  //test vector generator
  initial
    begin
      //for EDA playground
      //{
      $dumpfile("dump.vcd");
  	  $dumpvars;
      //}
      
      //test vector 1
      test_in0 = 2'b00;
      test_in1 = 2'b00;
      # 200;
      //test vector 2
      test_in0 = 2'b01;
      test_in1 = 2'b00;
      # 200;
      //test vector 3
      test_in0 = 2'b01;
      test_in1 = 2'b11;
      # 200;
      //test vector 4
      test_in0 = 2'b10;
      test_in1 = 2'b10;
      # 200;
      //test vector 5
      test_in0 = 2'b10;
      test_in1 = 2'b00;
      # 200;
      //test vector 6
      test_in0 = 2'b11;
      test_in1 = 2'b11;
      # 200;
      //test vector 7
      test_in0 = 2'b11;
      test_in1 = 2'b01;
      # 200;
      
      // stop simulation for EDA playground
      #100000 $finish;
    end
endmodule

      
