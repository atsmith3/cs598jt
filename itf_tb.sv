//pipeline interface testbench
//Jingyang Liu
//12072019

`include "types.sv"

timeunit 1ns;
timeprecision 1ns;

module itf_tb;

logic clk;
logic rst;

pipeline_data_t data_i;
logic valid_i;
logic ready_o;

logic valid_o;
logic processed;

task init();
    clk <= 1'b0;
    rst <= 1'b0;
    valid_i <= 1'b0;
    data_i <= '0;
    processed <= 1'b0;
endtask : init

task reset();
    #20 rst <= 1'b1;
    #20 rst <= 1'b0;
endtask : reset

task prev_valid(input integer data);
    #10;
    $display($time, ": prev_valid(600d600d)");
    data_i <= data;
    valid_i <= 1'b1;
endtask : prev_valid

task next_yumi();
    #10;
    $display($time, ": next_yumi");
    processed <= 1'b1;
    #10 processed <= 1'b0;
    data_i <= 'h123456789abcdef0;
endtask : next_yumi

task prev_valid_next_yumi(input integer data);
    #10;
    $display($time, ": prev_valid_next_yumi(abcdabcd)");
    processed <= 1'b1;
    data_i <= data;
    valid_i <= 1'b1;
    #10;
    $display($time, ": not yumi, deadbeefdeadbeef");
    processed <= 1'b0;
    data_i <= 'hdeadbeefdeadbeef;
    valid_i <= 1'b0;
    
endtask : prev_valid_next_yumi

initial begin
    init();
    reset();
    prev_valid('h600d600d);
    next_yumi();
    prev_valid_next_yumi('habcdabcd);
    #1000;
    $finish;
end

always begin
    #5 clk = ~clk;
end

one_FIFO pipe_itf (
    .clk(clk)
    ,.rst(rst)
    ,.data_i(data_i)
    ,.valid_i(valid_i)
    ,.ready_o()
    ,.valid_o()
    ,.data_o()
    ,.processed(processed)
);

endmodule

