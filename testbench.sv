// Andrew Smith
// Testbench RTL:
//
// 120619

`include "types.sv"

module tb;
  int    fd;       // Variable for file descriptor handle
  int    a, b, c, d;
  string str;

  initial begin
    // 2. Let us now read back the data we wrote in the previous step
    fd = $fopen ("test.csv", "r");

    // fscanf returns the number of matches
    while ($fscanf (fd, "%d,%d,%d,%d\n", a, b, c, d) == 2) begin
      $display ("%d,%d,%d,%d\n", a, b, c, d);
    end

    // Close this file handle
    $fclose(fd);
  end
endmodule
