library verilog;
use verilog.vl_types.all;
entity CPU is
    port(
        opcode          : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        PC              : out    vl_logic_vector(7 downto 0);
        R0              : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0);
        R4              : out    vl_logic_vector(7 downto 0);
        R5              : out    vl_logic_vector(7 downto 0);
        R6              : out    vl_logic_vector(7 downto 0);
        R7              : out    vl_logic_vector(7 downto 0)
    );
end CPU;
