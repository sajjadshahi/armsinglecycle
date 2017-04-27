library verilog;
use verilog.vl_types.all;
entity control is
    port(
        \in\            : in     vl_logic_vector(10 downto 0);
        reg2Loc         : out    vl_logic;
        jump            : out    vl_logic;
        memRead         : out    vl_logic;
        memToReg        : out    vl_logic;
        ALUOp           : out    vl_logic_vector(2 downto 0);
        memWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        regWrite        : out    vl_logic;
        beq             : out    vl_logic;
        bne             : out    vl_logic
    );
end control;
