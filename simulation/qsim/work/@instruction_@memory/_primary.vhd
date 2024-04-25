library verilog;
use verilog.vl_types.all;
entity Instruction_Memory is
    port(
        dio             : inout  vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        we              : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0)
    );
end Instruction_Memory;
