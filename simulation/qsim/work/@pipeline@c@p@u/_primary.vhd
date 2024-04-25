library verilog;
use verilog.vl_types.all;
entity PipelineCPU is
    port(
        ALUCONFLICTING  : out    vl_logic;
        clk             : in     vl_logic;
        PC              : out    vl_logic_vector(7 downto 0);
        ALU_PC          : out    vl_logic_vector(7 downto 0);
        Last_PC         : out    vl_logic_vector(7 downto 0);
        opcode_ALU      : out    vl_logic_vector(3 downto 0);
        opcode_RegRead  : out    vl_logic_vector(3 downto 0);
        R0              : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0);
        R4              : out    vl_logic_vector(7 downto 0);
        R5              : out    vl_logic_vector(7 downto 0);
        R6              : out    vl_logic_vector(7 downto 0);
        R7              : out    vl_logic_vector(7 downto 0)
    );
end PipelineCPU;
