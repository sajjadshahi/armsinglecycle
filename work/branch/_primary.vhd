library verilog;
use verilog.vl_types.all;
entity branch is
    port(
        beq             : in     vl_logic;
        bne             : in     vl_logic;
        zero            : in     vl_logic;
        \out\           : out    vl_logic
    );
end branch;
