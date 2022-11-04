library ieee;
use ieee.std_logic_1164.all;

entity FLIPFLOP is
port(
	CLK, D : in bit;
	Q : out bit
);
end FLIPFLOP;


architecture main of FLIPFLOP is

begin
process(CLK, D)
begin
	
	if (CLK' EVENT and CLK = '1' and D = '0') then
		Q <= '0';
	elsif (CLK' EVENT and CLK = '1' and D = '1') then 
		Q <= '1';
	end if;

end process;
end architecture main;