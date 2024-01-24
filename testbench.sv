module tb_ElevatorController();

  `timescale 1ns/1ps

  
  logic clk, rst;
  logic [2:0] floor_request, current_floor;
  logic [2:0] next_floor;

  
  ElevatorController uut (
    .clk(clk),
    .rst(rst),
    .floor_request(floor_request),
    .current_floor(current_floor),
    .next_floor(next_floor)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Initial stimulus
  initial begin
    rst = 1;
    floor_request = 0;
    current_floor = 0;

    #10 rst = 0;

    //Move from floor 0 to floor 2
    floor_request = 2;
    #10

    //Move from floor 2 to floor 0
    floor_request = 0;
    #10

    // Rest
    floor_request = 0;
    #10

    

    // Stop simulation
    #10 $finish;
  end

endmodule
