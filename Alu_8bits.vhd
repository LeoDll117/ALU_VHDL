----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:19 06/19/2022 
-- Design Name: 
-- Module Name:    Alu_8bits - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity Alu_8bits is
    port ( A1 			: in  STD_LOGIC_VECTOR (7 downto 0);
           B1 			: in  STD_LOGIC_VECTOR (7 downto 0);
			  ---Codigo de Operacion
           OpCode1 	: in  STD_LOGIC_VECTOR (1 downto 0);
			  ---Salida
           Do 			: out  STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture RTL of Alu_8bits is

begin
	process(A1, B1, OpCode1)
		begin
			case OpCode1 is
				when "00" =>
					Do <= STD_LOGIC_VECTOR(unsigned(A1) + unsigned(B1));
				when "01" =>
					Do <= STD_LOGIC_VECTOR(unsigned(A1) - unsigned(B1));
				when "10" =>
					Do <= A1 and B1;
				when others =>
					Do <= A1 or B1;
	
			end case;
	end process;
end architecture;


























