
module BCD(clk, rst_asyn, Q_out);
 input clk;
 input rst_asyn;
 output [3:0] Q_out;
 reg [3:0] Q_out;
initial begin            //設定Q_out初始值
 Q_out=0'b0000;
end
always@ (posedge clk or posedge rst_asyn)    //每當clock上升或reset上升
 begin
 if (rst_asyn)          //當reset上升
  Q_out=0'b0000;
 else if (Q_out==15)    //當Q_out已經等於15
  Q_out=0'b0000;
 else
  Q_out++;
 end
endmodule