library verilog;
use verilog.vl_types.all;
entity Instruction_Memory_vlg_check_tst is
    port(
        dio             : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Instruction_Memory_vlg_check_tst;
