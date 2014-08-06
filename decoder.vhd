----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:19 07/07/2014 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY decoder is
	port(sw3, sw2, sw1, sw0 :in std_logic;
	     a, b, c, d, e, f, g : out std_logic);
end decoder;

ARCHITECTURE behavior of decoder is
begin
	process(sw3, sw2, sw1, sw0)
		begin
		 a <= (not(sw3) and not(sw2) and not(sw1) and sw0) or 
		      (sw2 and not(sw1) and not(sw0)) or 
		      (sw3 and sw2) or 
		      (sw3 and sw1); 
		b <= (sw2 and sw1 and not(sw0)) or
		     (sw2 and not(sw1) and sw0) or
		     (sw3 and sw2) or 
		     (sw3 and sw1); 
		c <= (not(sw3) and not(sw2) and sw1 and not(sw0)) or
		     (sw3 and sw2) or 
		     (sw3 and sw1); 
		d <= (not(sw3) and sw2 and not(sw1) and not(sw0)) or 
		     (not(sw3) and not(sw2) and not(sw1) and sw0) or
		     (not(sw3) and sw2 and sw1 and sw0) or
		     (sw3 and sw2) or 
		     (sw3 and sw1); 
		    
		e <= (not(sw3) and sw2 and not(sw1) and not(sw0)) or 
			  (not(sw3) and sw0) or
			  (sw3 and not(sw2) and not(sw1) and sw0) or 
			  (sw3 and sw2) or 
		     (sw3 and sw1); 
		f <= (not(sw3) and not(sw2) and not(sw1) and sw0) or
		     (not(sw3) and not(sw2) and sw1 and not(sw0)) or
			  (sw1 and sw0) or
		     (sw3 and sw2) or 
		     (sw3 and sw1); 
		g <= (not(sw3 or sw2 or sw1)) or
		     (not(sw3) and sw2 and sw1 and sw0) or
		    (sw3 and sw2) or 
		     (sw3 and sw1); 
	end process;
end behavior;	
 