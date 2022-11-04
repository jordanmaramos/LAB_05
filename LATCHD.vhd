library ieee;
use ieee.std_logic_1164.all;

entity LATCHD is
port(
	C, D : in bit;
	Q : out bit
);
end LATCHD;


architecture main of LATCHD is

begin
process(C, D)
begin
	
	if (C = '1' and D = '0') then
		Q <= '0';
	elsif (C = '1' and D = '1') then 
		Q <= '1';
	end if;

end process;
end architecture main;