library verilog;
use verilog.vl_types.all;
entity PipelineCPU_vlg_check_tst is
    port(
        last_inst       : in     vl_logic_vector(15 downto 0);
        Last_PC         : in     vl_logic_vector(7 downto 0);
        R0              : in     vl_logic_vector(7 downto 0);
        R1              : in     vl_logic_vector(7 downto 0);
        R2              : in     vl_logic_vector(7 downto 0);
        R3              : in     vl_logic_vector(7 downto 0);
        R4              : in     vl_logic_vector(7 downto 0);
        R5              : in     vl_logic_vector(7 downto 0);
        R6              : in     vl_logic_vector(7 downto 0);
        R7              : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end PipelineCPU_vlg_check_tst;
