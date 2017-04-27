library verilog;
use verilog.vl_types.all;
entity ALUcontrol is
    port(
        \in\            : in     vl_logic_vector(10 downto 0);
        ALUOp           : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end ALUcontrol;
