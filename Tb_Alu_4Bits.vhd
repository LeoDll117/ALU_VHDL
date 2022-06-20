--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
 
ENTITY Tb_Alu_4Bits IS
END Tb_Alu_4Bits;
 
ARCHITECTURE behavior OF Tb_Alu_4Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu_4Bits
    PORT(
	 ---Entrada
         A, B : IN  std_logic_vector(3 downto 0);
         OpCode : IN  std_logic_vector(2 downto 0);
	 ---Salida
         Cout : OUT  std_logic;
         Yout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := "1011";
   signal B : std_logic_vector(3 downto 0) := "1001";
   signal OpCode : std_logic_vector(2 downto 0) := (others => '0');


 	--Outputs
   signal Cout : std_logic := '0';
   signal Resul : std_logic_vector(3 downto 0) :=(others => '0');
	
BEGIN

   uut: Alu_4Bits PORT MAP (A, B, OpCode, Cout, Resul);
	A <= "1100" after 80 ns;
	B <= "1010" after 80 ns;
	OpCode <= OpCode + '1' after 10 ns;
	
	END ARCHITECTURE;
