library ieee;
use ieee.std_logic_1164.all;

entity REG4BIT is
port(
	I3, I2, I1, I0, CLK: in bit;
	Q3, Q2, Q1, Q0 : out bit
);
end REG4BIT;


architecture main of REG4BIT is

component LATCHD is 
port(
	C, D : in bit;
	Q : out bit
);
end component;

begin

	u0: LATCHD port map (C => CLK, D => I3, Q => Q3);
	u1: LATCHD port map (C => CLK, D => I2, Q => Q2);
	u2: LATCHD port map (C => CLK, D => I1, Q => Q1);
	u3: LATCHD port map (C => CLK, D => I0, Q => Q0);

end architecture main;