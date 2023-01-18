
-- VHDL Instantiation Created from source file counter.vhd -- 12:01:02 01/18/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counter
	PORT(
		Clock : IN std_logic;
		trig : IN std_logic;          
		num : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_counter: counter PORT MAP(
		Clock => ,
		trig => ,
		num => 
	);


