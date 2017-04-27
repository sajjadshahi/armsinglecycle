library verilog;
use verilog.vl_types.all;
entity main is
    generic(
        four            : integer := 4
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pcIn            : out    vl_logic_vector(31 downto 0);
        pcOut           : out    vl_logic_vector(31 downto 0);
        addOut          : out    vl_logic_vector(31 downto 0);
        instruction     : out    vl_logic_vector(31 downto 0);
        reg2Loc         : out    vl_logic;
        jump            : out    vl_logic;
        memRead         : out    vl_logic;
        memtoReg        : out    vl_logic;
        memWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        regWrite        : out    vl_logic;
        beq             : out    vl_logic;
        bne             : out    vl_logic;
        ALUOp           : out    vl_logic_vector(2 downto 0);
        mux5ToReg       : out    vl_logic_vector(4 downto 0);
        mux32ToReg      : out    vl_logic_vector(31 downto 0);
        readData1       : out    vl_logic_vector(31 downto 0);
        readData2       : out    vl_logic_vector(31 downto 0);
        extend          : out    vl_logic_vector(31 downto 0);
        addIn           : out    vl_logic_vector(31 downto 0);
        jumpExtend      : out    vl_logic_vector(27 downto 0);
        jumpAddress     : out    vl_logic_vector(31 downto 0);
        addRst          : out    vl_logic_vector(31 downto 0);
        ALUcontrol      : out    vl_logic_vector(3 downto 0);
        mux32ToALU      : out    vl_logic_vector(31 downto 0);
        zero            : out    vl_logic;
        ALURst          : out    vl_logic_vector(31 downto 0);
        readMemoryData  : out    vl_logic_vector(31 downto 0);
        branchTomux32   : out    vl_logic;
        mux32Tomux32    : out    vl_logic_vector(31 downto 0)
    );
end main;
