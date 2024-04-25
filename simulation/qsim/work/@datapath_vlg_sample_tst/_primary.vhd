library verilog;
use verilog.vl_types.all;
entity Datapath_vlg_sample_tst is
    port(
        ALUOp           : in     vl_logic_vector(3 downto 0);
        ALUSrc          : in     vl_logic;
        Branch          : in     vl_logic;
        clk             : in     vl_logic;
        JAL             : in     vl_logic;
        Jump            : in     vl_logic;
        MemtoReg        : in     vl_logic;
        MemWrite        : in     vl_logic;
        RegDst          : in     vl_logic;
        RegWrite        : in     vl_logic;
        RtoPC           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Datapath_vlg_sample_tst;
