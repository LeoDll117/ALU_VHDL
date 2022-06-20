--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:36:12 06/19/2022
-- Design Name:   
-- Module Name:   C:/Users/Usuario/Desktop/arkitecth/EjerciciosClaseU2/Tb_Alu_8Bits.vhd
-- Project Name:  EjerciciosClaseU2
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tb_Alu_8Bits IS
END Tb_Alu_8Bits;
 
ARCHITECTURE behavior OF Tb_Alu_8Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu_8bits is
    PORT(
         A1 : IN  std_logic_vector(7 downto 0);
         B1 : IN  std_logic_vector(7 downto 0);
         OpCode1 : IN  std_logic_vector(1 downto 0);
         Do : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal As : std_logic_vector(7 downto 0);
   signal Bs : std_logic_vector(7 downto 0); 
   signal OpCodeS : std_logic_vector(1 downto 0);

 	--Outputs
   signal DoS : std_logic_vector(7 downto 0);
 
BEGIN
 

   uut: Alu_8bits PORT MAP (As, Bs, OpCodeS, DoS);
	---Asignacion de Valores
	As <= "00010001", "01100101"  after 5 ns;
	Bs <= "00100011", "00000010" after 5 ns, "00111001" after 20 ns;
	OpCodeS <= "00", "01" after 5 ns;

END ARCHITECTURE;
