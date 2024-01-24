module ElevatorController(
  input logic clk,
  input logic rst,
  input logic [2:0] floor_request,
  input logic [2:0] current_floor,
  output logic [2:0] next_floor
);

  // Defining states for the elevator controller
  enum logic [1:0] {
    IDLE,
    MOVE_UP,
    MOVE_DOWN
  } ElevatorState_t;

  // Defining internal signals
  logic [1:0] state, next_state;

  // Sequential logic for state transitions below
  always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
      state <= IDLE;
    end else begin
      state <= next_state;
    end
  end

  // Combinational logic for next state and output generation
  always_comb begin
    next_state = state;
    next_floor = current_floor;

    case (state)
      IDLE:
        if (floor_request > current_floor) begin
          next_state = MOVE_UP;
        end else if (floor_request < current_floor) begin
          next_state = MOVE_DOWN;
        end
      MOVE_UP:
        next_floor = current_floor + 1;
        if (next_floor == floor_request) begin
          next_state = IDLE;
        end
      MOVE_DOWN:
        next_floor = current_floor - 1;
        if (next_floor == floor_request) begin
          next_state = IDLE;
        end
    endcase
  end

endmodule
