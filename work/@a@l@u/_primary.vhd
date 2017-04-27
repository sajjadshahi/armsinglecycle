library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        in1             : in     vl_logic_vector(31 downto 0);
        in2             : in     vl_logic_vector(31 downto 0);
        control         : in     vl_logic_vector(3 downto 0);
        zero            : out    vl_logic;
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end ALU;
