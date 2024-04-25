library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        funct           : out    vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        PC              : out    vl_logic_vector(7 downto 0);
        RtoPC           : in     vl_logic;
        RegWrite        : in     vl_logic;
        JAL             : in     vl_logic;
        MemtoReg        : in     vl_logic;
        ALUSrc          : in     vl_logic;
        ALUOp           : in     vl_logic_vector(3 downto 0);
        MemWrite        : in     vl_logic;
        RegDst          : in     vl_logic;
        Jump            : in     vl_logic;
        Branch          : in     vl_logic;
        opcode          : out    vl_logic_vector(3 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0);
        R4              : out    vl_logic_vector(7 downto 0);
        R5              : out    vl_logic_vector(7 downto 0);
        R6              : out    vl_logic_vector(7 downto 0);
        R7              : out    vl_logic_vector(7 downto 0)
    );
end Datapath;
