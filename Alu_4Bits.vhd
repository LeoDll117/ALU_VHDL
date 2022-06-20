----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:06 06/19/2022 
-- Design Name: 
-- Module Name:    Alu_4Bits - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Alu_4Bits is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           OpCode : in  STD_LOGIC_VECTOR (2 downto 0);
			  
           Cout : out  STD_LOGIC;
           Yout : out  STD_LOGIC_VECTOR (3 downto 0));
end Alu_4Bits;

architecture Behavioral of Alu_4Bits is
	signal Y_tmp: STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
begin
--
	with OpCode (2 downto 0) select
		Y_tmp <=	('0' & A) when "000",
					('0' & B) when "001",
					('0' & A) and ('0' & B) when "010",
					('0' & A) or ('0' & B) when "011",
--
				('0' & A) + B when "100",
				('0' & A) + '1' when "101",
				('0' & A) - '1' when "110",
				('0' & A) - B when others;
				
	Cout <= Y_tmp(4);
	Yout <= Y_tmp(3 downto 0);

end Behavioral;













