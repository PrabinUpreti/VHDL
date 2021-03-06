library ieee;
use ieee.std_logic_1164.all;
entity ha_tb is
end ha_tb;
architecture behave of ha_tb is
	component ha
		port(
			a: in std_logic;
			b: in std_logic;
			c: out std_logic;
			o: out std_logic
		);
	end component;
	--INPUT SIGNALS
	signal a,b: std_logic:='0';
	--OUTPUT SIGNALS
	signal o,c:std_logic;
begin
	uut:ha port map(
		       	a => a,
			b => b,
			c => c,
			o => o
		       );
	stim_proc: process
	begin
		wait for 10 ns;
		a <= '0';
		b <= '1';
		wait for 10 ns;
		a <= '1';
		b <= '0';
		wait for 10 ns;
		a <= '1';
	       	b <=  '1';
		wait for 10 ns;
		a <= '0';
		b <= '0';	

		wait;
	end process;
end;
