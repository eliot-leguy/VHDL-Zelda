----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.10.2017 08:01:54
-- Design Name: 
-- Module Name: VGA_top - Behavioral
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

entity VGA_top is
    Port ( H125MHz : in STD_LOGIC;
           up : in STD_LOGIC;
           down : in STD_LOGIC;
           left : in STD_LOGIC;
           right : in STD_LOGIC;
           reset : in STD_LOGIC;
           attack : in STD_LOGIC;
           stopMouvement : in STD_LOGIC;
           vga_hs : out STD_LOGIC;
           vga_vs : out STD_LOGIC;
           vga_r : out STD_LOGIC_VECTOR (4 downto 0);
           vga_g : out STD_LOGIC_VECTOR (5 downto 0);
           vga_b : out STD_LOGIC_VECTOR (4 downto 0));
end VGA_top;

architecture Behavioral of VGA_top is

component clk_wiz_1
port
 (-- Clock in ports
  clk_in1           : in     std_logic;
  -- Clock out ports
  clk_out1          : out    std_logic
 );
end component;

ATTRIBUTE SYN_BLACK_BOX : BOOLEAN;
ATTRIBUTE SYN_BLACK_BOX OF clk_wiz_1 : COMPONENT IS TRUE;

ATTRIBUTE BLACK_BOX_PAD_PIN : STRING;
ATTRIBUTE BLACK_BOX_PAD_PIN OF clk_wiz_1 : COMPONENT IS "clk_in1,clk_out1";

component ClockManager is
    generic(clkDiv : in integer);
    Port(clk : in std_logic;
        clkOut : out std_logic);
end component;

component control1 is
    Port(clk : in std_logic;
         up : in STD_LOGIC;
         down : in STD_LOGIC;
         left : in STD_LOGIC;
         right : in STD_LOGIC;
         reset : in STD_LOGIC;
         attack : in STD_LOGIC;
         xEnnemi : in integer;
         yEnnemi : in integer;
         lifeLaink : out integer range 0 to 3;
         drawAttack : out STD_LOGIC;
         direction : out integer range 0 to 4;
         marche : out integer range 0 to 2;
         attackAnimation : out unsigned(1 downto 0);
         displayLaink : out STD_LOGIC;
         lvl : out integer;
         X : out integer;
         Y : out integer);
end component;

component control2 is
    Port(clk : in std_logic;
         reset : in STD_LOGIC;
         isAttacked : in STD_LOGIC;
         xAttack : in integer;
         yAttack : in integer;
         directionAttack : in integer;
         stopMouvement : in STD_LOGIC;
         changeLvl : in integer;
         life : out integer range 0 to 4;
         direction : out integer range 0 to 4;
         marche : out integer range 0 to 2;
         X : out integer;
         Y : out integer);
end component;

component GeneSync is
    Port ( CLK   : in std_logic;
           HSYNC : out std_logic;
           VSYNC : out std_logic;
		   IMG   : out std_logic;
           X     : out std_logic_vector(9 downto 0);
           Y     : out std_logic_vector(8 downto 0));
end component;

component GeneRGB_V1  is
    Port ( 
	       X     : in unsigned(9 downto 0);
           Y     : in unsigned(8 downto 0);
           IMG   : in std_logic;
           xLaink : in integer;
           yLaink : in integer;
           marcheLaink : in integer range 0 to 2;
           directionLaink : in integer range 0 to 4;
           displayLaink : in STD_LOGIC;
           lvl : in integer;
           xEnnemi : in integer;
           yEnnemi : in integer;
           marcheEnnemi : in integer range 0 to 2;
           directionEnnemi : in integer range 0 to 4;
           lifeEnnemi : in integer range 0 to 4;
           lifeLaink : in integer range 0 to 3;
           drawAttack : in STD_LOGIC;
           attackAnimation : in unsigned(1 downto 0);
		   R     : out std_logic_vector(4 downto 0);
           G     : out std_logic_vector(5 downto 0);
           B     : out std_logic_vector(4 downto 0));
end component;

signal Xi          : std_logic_vector(9 downto 0);
signal Yi          : std_logic_vector(8 downto 0);
signal Xpxl        : unsigned(9 downto 0);
signal Ypxl        : unsigned(8 downto 0);
signal IMGi        : std_logic;  
signal pxl_clk     : std_logic;
signal clkObjet    : std_logic;

signal xLaink      : integer range 0 to 700 :=100;
signal yLaink      : integer range 0 to 700  :=100;
signal directionLaink   : integer range 0 to 4  :=0;
signal marcheLaink      : integer range 0 to 2 :=0;
signal lifeLaink : integer range 0 to 3 := 3;
signal displayLaink : std_logic;

signal xEnnemi      : integer range 0 to 700 :=100;
signal yEnnemi      : integer range 0 to 700 :=100;
signal directionEnnemi   : integer range 0 to 4 :=0;
signal marcheEnnemi      : integer range 0 to 2 :=0;
signal lifeEnnemi :       integer range 0 to 3:=1;

signal drawAttack : std_logic;
signal attackAnimation : unsigned(1 downto 0);

signal lvl : integer;



begin

Xpxl <= unsigned(Xi);
Ypxl <= unsigned(Yi);

U0 : clk_wiz_1
   port map ( 
   -- Clock in ports
   clk_in1 => H125MHz,
  -- Clock out ports  
   clk_out1 => pxl_clk              
 );
 
U1 : GeneSync 
    port map(
    CLK    => pxl_clk,
    HSYNC  => vga_hs,
    VSYNC  => vga_vs,
    IMG    => IMGi,
	X      => Xi,
    Y      => Yi);
	 
U2 : GeneRGB_V1  
    port map(
	X     => Xpxl,
    Y     => Ypxl,
    IMG   => IMGi,
    xLaink => xLaink,
    yLaink => yLaink,
    marcheLaink => marcheLaink,
    directionLaink => directionLaink,
    lifeLaink => lifeLaink,
    displayLaink => displayLaink,
    lvl => lvl,
    xEnnemi => xEnnemi,
    yEnnemi => yEnnemi,
    marcheEnnemi => marcheEnnemi,
    lifeEnnemi => lifeEnnemi,
    directionEnnemi => directionEnnemi,
    drawAttack => drawAttack,
    attackAnimation => attackAnimation,
    R     => vga_r,
    G     => vga_g,
    B     => vga_b);
   
U3 : ClockManager
    generic map(clkDiv =>1000000)
    port map(
    clk => pxl_clk,
    clkOut => clkObjet);
    
U4 : control1
    port map(clk => clkObjet,
             reset => reset,
             up => up,
             down => down,
             left => left,
             right => right,
             attack => attack,
             marche => marcheLaink,
             direction => directionLaink,
             drawAttack => drawAttack,
             attackAnimation => attackAnimation,
             displayLaink => displayLaink,
             lvl => lvl,
             xEnnemi => xEnnemi,
             yEnnemi => yEnnemi,
             lifeLaink=>lifeLaink,
             X => xLaink,
             Y => yLaink);
             
U5 : control2
    port map(clk => clkObjet,
             reset => reset,
             xAttack => xLaink,
             yAttack => yLaink,
             isAttacked => drawAttack,
             directionAttack => directionLaink,
             stopMouvement => stopMouvement,
             life => lifeEnnemi,
             marche => marcheEnnemi,
             direction => directionEnnemi,
             changeLvl => lvl,
             X => xEnnemi,
             Y => yEnnemi);
             
    
end Behavioral;
