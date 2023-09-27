----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2022 11:10:57
-- Design Name: 
-- Module Name: ClockManager - Structural
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ClockManager is
    generic(clkDiv : integer:=10);
    Port ( clk : in STD_LOGIC;
           clkOut : out STD_LOGIC);
           
end ClockManager;

architecture Structural of ClockManager is
signal temp : unsigned(30 downto 0);

begin

    process(clk)
        begin
            if(clk'event and clk='1') then
                temp <= temp+1;
                
                if(temp >= clkDiv-1) then
                    clkOut <= '1';
                    temp<=(others=>'0');
                else
                    clkOut <= '0';
                end if;
              end if;
    end process;

end Structural;
