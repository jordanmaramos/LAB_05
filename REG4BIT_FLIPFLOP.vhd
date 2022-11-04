library ieee;
use ieee.std_logic_1164.all;

entity REG4BIT_FLIPFLOP is
port(
	I3, I2, I1, I0, CLK1: in bit;
	Q3, Q2, Q1, Q0 : out bit
);
end REG4BIT_FLIPFLOP;


architecture main of REG4BIT_FLIPFLOP is

component FLIPFLOP is 
port(
	CLK, D : in bit;
	Q : out bit
);
end component;

begin

	u0: FLIPFLOP port map (CLK => CLK1, D => I3, Q => Q3);
	u1: FLIPFLOP port map (CLK => CLK1, D => I2, Q => Q2);
	u2: FLIPFLOP port map (CLK => CLK1, D => I1, Q => Q1);
	u3: FLIPFLOP port map (CLK => CLK1, D => I0, Q => Q0);

end architecture main;