----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:51:15 01/18/2023 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( Clock : in  STD_LOGIC;
           trig  : in  STD_LOGIC;
           num  : out  STD_LOGIC_VECTOR (7 downto 0));
end counter;

architecture Behavioral of counter is
    signal counter :unsigned(7 downto 0) := (others=> '0'); 
    signal trig_int :STD_LOGIC := '0';


begin
    num     <= std_logic_vector(counter);
    process(CLock)
    begin
        if rising_edge(Clock) then
            trig_int        <= trig;  
            --if (trig_int = '0' and trig = '1') then
                counter     <= counter +1;
            --end if; 
        end if;
    end process;



end Behavioral;

