----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:35 01/18/2023 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    Port
     ( 
        Clock : in  STD_LOGIC;
        num_out : out std_logic_vector(7 downto 0)
    );
end top;

architecture Behavioral of top is

    component dcm
    port
        (-- Clock in ports
        Clock           : in     std_logic;
        -- Clock out ports
        CLK_100          : out    std_logic;
        CLK_125          : out    std_logic
        );
    end component;

    signal CLK_100  :std_logic:='0';
    signal trig     :std_logic:='0';
    signal CLK_125  :std_logic:='0';
    signal clk_cnt  :unsigned(12 downto 0) := (others => '0'); 
    signal num      :std_logic_vector(7 downto 0) := (others => '0'); 
    signal num_in      :std_logic_vector(7 downto 0) := (others => '0'); 
    signal num_int      :std_logic_vector(7 downto 0) := (others => '0');
    
    


begin

    dcm_module : dcm
  port map
   (-- Clock in ports
    Clock => Clock,
    -- Clock out ports
    CLK_100 => CLK_100,
    CLK_125 => CLK_125
    );

    counter_module : entity work.counter 
    PORT MAP
    (
		Clock   => CLK_125,
		trig    => '0',
		num     => num
	);
	    num_out     <= num_int;



    process(CLK_100)
    begin 
        if rising_edge(CLK_100) then 
            clk_cnt     <= clk_cnt+1;
            trig        <= clk_cnt(12);
            num_in      <= num;
            num_int     <= num_in;
        end if;
    end process;

end Behavioral;

