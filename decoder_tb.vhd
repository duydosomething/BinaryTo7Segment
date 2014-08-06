
library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is 
end decoder_tb;

architecture test of decoder_tb is
	component decoder is 
	port(sw3, sw2, sw1, sw0 :in std_logic;
	     a, b, c, d, e, f, g : out std_logic);
	end component;


signal tsw3, tsw2, tsw1, tsw0, ta, tb, tc, td, te, tf, tg: std_logic;
begin
decodertest: decoder port map(tsw3, tsw2, tsw1, tsw0, ta, tb, tc, td, te, tf, tg);
process
begin
--case 0
tsw3 <= '0';
tsw2 <= '0';
tsw1 <= '0';
tsw0 <= '0';
wait for 10 ns;

--case 1
tsw3 <= '0';
tsw2 <= '0';
tsw1 <= '0';
tsw0 <= '1';
wait for 10 ns;

--case 2
tsw3 <= '0';
tsw2 <= '0';
tsw1 <= '1';
tsw0 <= '0';
wait for 10 ns;

--case 3
tsw3 <= '0';
tsw2 <= '0';
tsw1 <= '1';
tsw0 <= '1';
wait for 10 ns;

--case 4
tsw3 <= '0';
tsw2 <= '1';
tsw1 <= '0';
tsw0 <= '0';
wait for 10 ns;

--case 5
tsw3 <= '0';
tsw2 <= '1';
tsw1 <= '0';
tsw0 <= '1';
wait for 10 ns;

--case 6
tsw3 <= '0';
tsw2 <= '1';
tsw1 <= '1';
tsw0 <= '0';
wait for 10 ns;

--case 7
tsw3 <= '0';
tsw2 <= '1';
tsw1 <= '1';
tsw0 <= '1';
wait for 10 ns;

--case 8
tsw3 <= '1';
tsw2 <= '0';
tsw1 <= '0';
tsw0 <= '0';
wait for 10 ns;

--case 9
tsw3 <= '1';
tsw2 <= '0';
tsw1 <= '0';
tsw0 <= '1';
wait for 10 ns;

end process;
end test;