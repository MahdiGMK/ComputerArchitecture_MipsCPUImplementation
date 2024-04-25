library verilog;
use verilog.vl_types.all;
entity Instruction_Memory_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        dio             : in     vl_logic_vector(15 downto 0);
        we              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Instruction_Memory_vlg_sample_tst;
