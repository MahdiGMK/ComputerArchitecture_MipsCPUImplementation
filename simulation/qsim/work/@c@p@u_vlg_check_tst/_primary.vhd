library verilog;
use verilog.vl_types.all;
entity CPU_vlg_check_tst is
    port(
        opcode          : in     vl_logic_vector(3 downto 0);
        PC              : in     vl_logic_vector(7 downto 0);
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
end CPU_vlg_check_tst;
