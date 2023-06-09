module clk_1Hz( 
	input clk, 
	output reg clk_out 
	);

localparam max_value = 25000000;
integer counter = 0;

initial
begin
	clk_out = 1'b0;
end


always@ (posedge clk)
    begin
        if (counter == max_value)
			begin
            counter <= 0;
				clk_out <= ~clk_out;
			end
        else
			begin
            counter <= counter + 1;
				clk_out <= clk_out;
			end
    end 

endmodule