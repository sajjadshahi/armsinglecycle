library verilog;
use verilog.vl_types.all;
entity dataMemory is
    port(
        address         : in     vl_logic_vector(31 downto 0);
        writeData       : in     vl_logic_vector(31 downto 0);
        memWrite        : in     vl_logic;
        memRead         : in     vl_logic;
        readData        : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end dataMemory;
