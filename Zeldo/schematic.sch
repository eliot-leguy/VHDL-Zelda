# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new VGA_top work:VGA_top:NOFILE -nosplit
load symbol clk_wiz_1 work_library0_1:clk_wiz_1:clk_wiz_1.edf HIERBOX pin clk_in1 input.left pin clk_out1 output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol GeneSync work:GeneSync:NOFILE HIERBOX pin CLK input.left pin HSYNC output.right pin IMG output.right pin VSYNC output.right pinBus X output.right [9:0] pinBus Y output.right [8:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol GeneRGB_V1 work:GeneRGB_V1:NOFILE HIERBOX pin IMG input.left pin displayLaink input.left pin drawAttack input.left pinBus B output.right [4:0] pinBus G output.right [5:0] pinBus R output.right [4:0] pinBus X input.left [9:0] pinBus Y input.left [8:0] pinBus attackAnimation input.left [1:0] pinBus directionEnnemi input.left [2:0] pinBus directionLaink input.left [2:0] pinBus lifeEnnemi input.left [2:0] pinBus lifeLaink input.left [1:0] pinBus lvl input.left [31:0] pinBus marcheEnnemi input.left [1:0] pinBus marcheLaink input.left [1:0] pinBus xEnnemi input.left [31:0] pinBus xLaink input.left [31:0] pinBus yEnnemi input.left [31:0] pinBus yLaink input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ClockManager work:ClockManager:NOFILE HIERBOX pin clk input.left pin clkOut output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol control1 work:control1:NOFILE HIERBOX pin attack input.left pin clk input.left pin displayLaink output.right pin down input.left pin drawAttack output.right pin left input.left pin reset input.left pin right input.left pin up input.left pinBus X output.right [31:0] pinBus Y output.right [31:0] pinBus attackAnimation output.right [1:0] pinBus direction output.right [2:0] pinBus lifeLaink output.right [1:0] pinBus lvl output.right [31:0] pinBus marche output.right [1:0] pinBus xEnnemi input.left [31:0] pinBus yEnnemi input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol control2 work:control2:NOFILE HIERBOX pin clk input.left pin isAttacked input.left pin reset input.left pin stopMouvement input.left pinBus X output.right [31:0] pinBus Y output.right [31:0] pinBus changeLvl input.left [31:0] pinBus direction output.right [2:0] pinBus directionAttack input.left [2:0] pinBus life output.right [2:0] pinBus marche output.right [1:0] pinBus xAttack input.left [31:0] pinBus yAttack input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load port H125MHz input -pg 1 -lvl 0 -x 0 -y 220
load port attack input -pg 1 -lvl 0 -x 0 -y 460
load port down input -pg 1 -lvl 0 -x 0 -y 120
load port left input -pg 1 -lvl 0 -x 0 -y 160
load port reset input -pg 1 -lvl 0 -x 0 -y 330
load port right input -pg 1 -lvl 0 -x 0 -y 490
load port stopMouvement input -pg 1 -lvl 0 -x 0 -y 360
load port up input -pg 1 -lvl 0 -x 0 -y 520
load port vga_hs output -pg 1 -lvl 6 -x 1860 -y 60
load port vga_vs output -pg 1 -lvl 6 -x 1860 -y 100
load portBus vga_b output [4:0] -attr @name vga_b[4:0] -pg 1 -lvl 6 -x 1860 -y 370
load portBus vga_g output [5:0] -attr @name vga_g[5:0] -pg 1 -lvl 6 -x 1860 -y 400
load portBus vga_r output [4:0] -attr @name vga_r[4:0] -pg 1 -lvl 6 -x 1860 -y 430
load inst U0 clk_wiz_1 work_library0_1:clk_wiz_1:clk_wiz_1.edf -autohide -attr @cell(#000000) clk_wiz_1 -pg 1 -lvl 1 -x 90 -y 210
load inst U1 GeneSync work:GeneSync:NOFILE -autohide -attr @cell(#000000) GeneSync -pinBusAttr X @name X[9:0] -pinBusAttr Y @name Y[8:0] -pg 1 -lvl 4 -x 1130 -y 50
load inst U2 GeneRGB_V1 work:GeneRGB_V1:NOFILE -autohide -attr @cell(#000000) GeneRGB_V1 -pinBusAttr B @name B[4:0] -pinBusAttr G @name G[5:0] -pinBusAttr R @name R[4:0] -pinBusAttr X @name X[9:0] -pinBusAttr Y @name Y[8:0] -pinBusAttr attackAnimation @name attackAnimation[1:0] -pinBusAttr directionEnnemi @name directionEnnemi[2:0] -pinBusAttr directionLaink @name directionLaink[2:0] -pinBusAttr lifeEnnemi @name lifeEnnemi[2:0] -pinBusAttr lifeLaink @name lifeLaink[1:0] -pinBusAttr lvl @name lvl[31:0] -pinBusAttr marcheEnnemi @name marcheEnnemi[1:0] -pinBusAttr marcheLaink @name marcheLaink[1:0] -pinBusAttr xEnnemi @name xEnnemi[31:0] -pinBusAttr xLaink @name xLaink[31:0] -pinBusAttr yEnnemi @name yEnnemi[31:0] -pinBusAttr yLaink @name yLaink[31:0] -pg 1 -lvl 5 -x 1710 -y 230
load inst U3 ClockManager work:ClockManager:NOFILE -autohide -attr @cell(#000000) ClockManager -pg 1 -lvl 2 -x 280 -y 210
load inst U4 control1 work:control1:NOFILE -autohide -attr @cell(#000000) control1 -pinBusAttr X @name X[31:0] -pinBusAttr Y @name Y[31:0] -pinBusAttr attackAnimation @name attackAnimation[1:0] -pinBusAttr direction @name direction[2:0] -pinBusAttr lifeLaink @name lifeLaink[1:0] -pinBusAttr lvl @name lvl[31:0] -pinBusAttr marche @name marche[1:0] -pinBusAttr xEnnemi @name xEnnemi[31:0] -pinBusAttr yEnnemi @name yEnnemi[31:0] -pg 1 -lvl 4 -x 1130 -y 270
load inst U5 control2 work:control2:NOFILE -autohide -attr @cell(#000000) control2 -pinBusAttr X @name X[31:0] -pinBusAttr Y @name Y[31:0] -pinBusAttr changeLvl @name changeLvl[31:0] -pinBusAttr direction @name direction[2:0] -pinBusAttr directionAttack @name directionAttack[2:0] -pinBusAttr life @name life[2:0] -pinBusAttr marche @name marche[1:0] -pinBusAttr xAttack @name xAttack[31:0] -pinBusAttr yAttack @name yAttack[31:0] -pg 1 -lvl 3 -x 630 -y 250
load net <const0> -ground -pin U2 lifeEnnemi[2] -pin U2 xEnnemi[31] -pin U2 xEnnemi[30] -pin U2 xEnnemi[29] -pin U2 xEnnemi[28] -pin U2 xEnnemi[27] -pin U2 xEnnemi[26] -pin U2 xEnnemi[25] -pin U2 xEnnemi[24] -pin U2 xEnnemi[23] -pin U2 xEnnemi[22] -pin U2 xEnnemi[21] -pin U2 xEnnemi[20] -pin U2 xEnnemi[19] -pin U2 xEnnemi[18] -pin U2 xEnnemi[17] -pin U2 xEnnemi[16] -pin U2 xEnnemi[15] -pin U2 xEnnemi[14] -pin U2 xEnnemi[13] -pin U2 xEnnemi[12] -pin U2 xEnnemi[11] -pin U2 xEnnemi[10] -pin U2 xLaink[31] -pin U2 xLaink[30] -pin U2 xLaink[29] -pin U2 xLaink[28] -pin U2 xLaink[27] -pin U2 xLaink[26] -pin U2 xLaink[25] -pin U2 xLaink[24] -pin U2 xLaink[23] -pin U2 xLaink[22] -pin U2 xLaink[21] -pin U2 xLaink[20] -pin U2 xLaink[19] -pin U2 xLaink[18] -pin U2 xLaink[17] -pin U2 xLaink[16] -pin U2 xLaink[15] -pin U2 xLaink[14] -pin U2 xLaink[13] -pin U2 xLaink[12] -pin U2 xLaink[11] -pin U2 xLaink[10] -pin U2 yEnnemi[31] -pin U2 yEnnemi[30] -pin U2 yEnnemi[29] -pin U2 yEnnemi[28] -pin U2 yEnnemi[27] -pin U2 yEnnemi[26] -pin U2 yEnnemi[25] -pin U2 yEnnemi[24] -pin U2 yEnnemi[23] -pin U2 yEnnemi[22] -pin U2 yEnnemi[21] -pin U2 yEnnemi[20] -pin U2 yEnnemi[19] -pin U2 yEnnemi[18] -pin U2 yEnnemi[17] -pin U2 yEnnemi[16] -pin U2 yEnnemi[15] -pin U2 yEnnemi[14] -pin U2 yEnnemi[13] -pin U2 yEnnemi[12] -pin U2 yEnnemi[11] -pin U2 yEnnemi[10] -pin U2 yLaink[31] -pin U2 yLaink[30] -pin U2 yLaink[29] -pin U2 yLaink[28] -pin U2 yLaink[27] -pin U2 yLaink[26] -pin U2 yLaink[25] -pin U2 yLaink[24] -pin U2 yLaink[23] -pin U2 yLaink[22] -pin U2 yLaink[21] -pin U2 yLaink[20] -pin U2 yLaink[19] -pin U2 yLaink[18] -pin U2 yLaink[17] -pin U2 yLaink[16] -pin U2 yLaink[15] -pin U2 yLaink[14] -pin U2 yLaink[13] -pin U2 yLaink[12] -pin U2 yLaink[11] -pin U2 yLaink[10] -pin U4 xEnnemi[31] -pin U4 xEnnemi[30] -pin U4 xEnnemi[29] -pin U4 xEnnemi[28] -pin U4 xEnnemi[27] -pin U4 xEnnemi[26] -pin U4 xEnnemi[25] -pin U4 xEnnemi[24] -pin U4 xEnnemi[23] -pin U4 xEnnemi[22] -pin U4 xEnnemi[21] -pin U4 xEnnemi[20] -pin U4 xEnnemi[19] -pin U4 xEnnemi[18] -pin U4 xEnnemi[17] -pin U4 xEnnemi[16] -pin U4 xEnnemi[15] -pin U4 xEnnemi[14] -pin U4 xEnnemi[13] -pin U4 xEnnemi[12] -pin U4 xEnnemi[11] -pin U4 xEnnemi[10] -pin U4 yEnnemi[31] -pin U4 yEnnemi[30] -pin U4 yEnnemi[29] -pin U4 yEnnemi[28] -pin U4 yEnnemi[27] -pin U4 yEnnemi[26] -pin U4 yEnnemi[25] -pin U4 yEnnemi[24] -pin U4 yEnnemi[23] -pin U4 yEnnemi[22] -pin U4 yEnnemi[21] -pin U4 yEnnemi[20] -pin U4 yEnnemi[19] -pin U4 yEnnemi[18] -pin U4 yEnnemi[17] -pin U4 yEnnemi[16] -pin U4 yEnnemi[15] -pin U4 yEnnemi[14] -pin U4 yEnnemi[13] -pin U4 yEnnemi[12] -pin U4 yEnnemi[11] -pin U4 yEnnemi[10] -pin U5 xAttack[31] -pin U5 xAttack[30] -pin U5 xAttack[29] -pin U5 xAttack[28] -pin U5 xAttack[27] -pin U5 xAttack[26] -pin U5 xAttack[25] -pin U5 xAttack[24] -pin U5 xAttack[23] -pin U5 xAttack[22] -pin U5 xAttack[21] -pin U5 xAttack[20] -pin U5 xAttack[19] -pin U5 xAttack[18] -pin U5 xAttack[17] -pin U5 xAttack[16] -pin U5 xAttack[15] -pin U5 xAttack[14] -pin U5 xAttack[13] -pin U5 xAttack[12] -pin U5 xAttack[11] -pin U5 xAttack[10] -pin U5 yAttack[31] -pin U5 yAttack[30] -pin U5 yAttack[29] -pin U5 yAttack[28] -pin U5 yAttack[27] -pin U5 yAttack[26] -pin U5 yAttack[25] -pin U5 yAttack[24] -pin U5 yAttack[23] -pin U5 yAttack[22] -pin U5 yAttack[21] -pin U5 yAttack[20] -pin U5 yAttack[19] -pin U5 yAttack[18] -pin U5 yAttack[17] -pin U5 yAttack[16] -pin U5 yAttack[15] -pin U5 yAttack[14] -pin U5 yAttack[13] -pin U5 yAttack[12] -pin U5 yAttack[11] -pin U5 yAttack[10]
load net H125MHz -port H125MHz -pin U0 clk_in1
netloc H125MHz 1 0 1 NJ 220
load net IMGi -pin U1 IMG -pin U2 IMG
netloc IMGi 1 4 1 1560 80n
load net Xi[0] -attr @rip X[0] -pin U1 X[0] -pin U2 X[0]
load net Xi[1] -attr @rip X[1] -pin U1 X[1] -pin U2 X[1]
load net Xi[2] -attr @rip X[2] -pin U1 X[2] -pin U2 X[2]
load net Xi[3] -attr @rip X[3] -pin U1 X[3] -pin U2 X[3]
load net Xi[4] -attr @rip X[4] -pin U1 X[4] -pin U2 X[4]
load net Xi[5] -attr @rip X[5] -pin U1 X[5] -pin U2 X[5]
load net Xi[6] -attr @rip X[6] -pin U1 X[6] -pin U2 X[6]
load net Xi[7] -attr @rip X[7] -pin U1 X[7] -pin U2 X[7]
load net Xi[8] -attr @rip X[8] -pin U1 X[8] -pin U2 X[8]
load net Xi[9] -attr @rip X[9] -pin U1 X[9] -pin U2 X[9]
load net Yi[0] -attr @rip Y[0] -pin U1 Y[0] -pin U2 Y[0]
load net Yi[1] -attr @rip Y[1] -pin U1 Y[1] -pin U2 Y[1]
load net Yi[2] -attr @rip Y[2] -pin U1 Y[2] -pin U2 Y[2]
load net Yi[3] -attr @rip Y[3] -pin U1 Y[3] -pin U2 Y[3]
load net Yi[4] -attr @rip Y[4] -pin U1 Y[4] -pin U2 Y[4]
load net Yi[5] -attr @rip Y[5] -pin U1 Y[5] -pin U2 Y[5]
load net Yi[6] -attr @rip Y[6] -pin U1 Y[6] -pin U2 Y[6]
load net Yi[7] -attr @rip Y[7] -pin U1 Y[7] -pin U2 Y[7]
load net Yi[8] -attr @rip Y[8] -pin U1 Y[8] -pin U2 Y[8]
load net attack -pin U4 attack -port attack
netloc attack 1 0 4 NJ 460 NJ 460 NJ 460 940J
load net attackAnimation[0] -attr @rip attackAnimation[0] -pin U2 attackAnimation[0] -pin U4 attackAnimation[0]
load net attackAnimation[1] -attr @rip attackAnimation[1] -pin U2 attackAnimation[1] -pin U4 attackAnimation[1]
load net clkObjet -pin U3 clkOut -pin U4 clk -pin U5 clk
netloc clkObjet 1 2 2 410 180 880J
load net directionEnnemi[0] -attr @rip direction[0] -pin U2 directionEnnemi[0] -pin U5 direction[0]
load net directionEnnemi[1] -attr @rip direction[1] -pin U2 directionEnnemi[1] -pin U5 direction[1]
load net directionEnnemi[2] -attr @rip direction[2] -pin U2 directionEnnemi[2] -pin U5 direction[2]
load net direction[0] -attr @rip direction[0] -pin U2 directionLaink[0] -pin U4 direction[0] -pin U5 directionAttack[0]
load net direction[1] -attr @rip direction[1] -pin U2 directionLaink[1] -pin U4 direction[1] -pin U5 directionAttack[1]
load net direction[2] -attr @rip direction[2] -pin U2 directionLaink[2] -pin U4 direction[2] -pin U5 directionAttack[2]
load net displayLaink -pin U2 displayLaink -pin U4 displayLaink
netloc displayLaink 1 4 1 N 360
load net down -pin U4 down -port down
netloc down 1 0 4 NJ 120 NJ 120 NJ 120 1000J
load net drawAttack -pin U2 drawAttack -pin U4 drawAttack -pin U5 isAttacked
netloc drawAttack 1 2 3 470 140 1020J 200 1480
load net left -pin U4 left -port left
netloc left 1 0 4 NJ 160 NJ 160 NJ 160 960J
load net lifeLaink[0] -attr @rip lifeLaink[0] -pin U2 lifeLaink[0] -pin U4 lifeLaink[0]
load net lifeLaink[1] -attr @rip lifeLaink[1] -pin U2 lifeLaink[1] -pin U4 lifeLaink[1]
load net life[0] -attr @rip life[0] -pin U2 lifeEnnemi[0] -pin U5 life[0]
load net life[1] -attr @rip life[1] -pin U2 lifeEnnemi[1] -pin U5 life[1]
load net lvl[0] -attr @rip lvl[0] -pin U2 lvl[0] -pin U4 lvl[0] -pin U5 changeLvl[0]
load net lvl[10] -attr @rip lvl[10] -pin U2 lvl[10] -pin U4 lvl[10] -pin U5 changeLvl[10]
load net lvl[11] -attr @rip lvl[11] -pin U2 lvl[11] -pin U4 lvl[11] -pin U5 changeLvl[11]
load net lvl[12] -attr @rip lvl[12] -pin U2 lvl[12] -pin U4 lvl[12] -pin U5 changeLvl[12]
load net lvl[13] -attr @rip lvl[13] -pin U2 lvl[13] -pin U4 lvl[13] -pin U5 changeLvl[13]
load net lvl[14] -attr @rip lvl[14] -pin U2 lvl[14] -pin U4 lvl[14] -pin U5 changeLvl[14]
load net lvl[15] -attr @rip lvl[15] -pin U2 lvl[15] -pin U4 lvl[15] -pin U5 changeLvl[15]
load net lvl[16] -attr @rip lvl[16] -pin U2 lvl[16] -pin U4 lvl[16] -pin U5 changeLvl[16]
load net lvl[17] -attr @rip lvl[17] -pin U2 lvl[17] -pin U4 lvl[17] -pin U5 changeLvl[17]
load net lvl[18] -attr @rip lvl[18] -pin U2 lvl[18] -pin U4 lvl[18] -pin U5 changeLvl[18]
load net lvl[19] -attr @rip lvl[19] -pin U2 lvl[19] -pin U4 lvl[19] -pin U5 changeLvl[19]
load net lvl[1] -attr @rip lvl[1] -pin U2 lvl[1] -pin U4 lvl[1] -pin U5 changeLvl[1]
load net lvl[20] -attr @rip lvl[20] -pin U2 lvl[20] -pin U4 lvl[20] -pin U5 changeLvl[20]
load net lvl[21] -attr @rip lvl[21] -pin U2 lvl[21] -pin U4 lvl[21] -pin U5 changeLvl[21]
load net lvl[22] -attr @rip lvl[22] -pin U2 lvl[22] -pin U4 lvl[22] -pin U5 changeLvl[22]
load net lvl[23] -attr @rip lvl[23] -pin U2 lvl[23] -pin U4 lvl[23] -pin U5 changeLvl[23]
load net lvl[24] -attr @rip lvl[24] -pin U2 lvl[24] -pin U4 lvl[24] -pin U5 changeLvl[24]
load net lvl[25] -attr @rip lvl[25] -pin U2 lvl[25] -pin U4 lvl[25] -pin U5 changeLvl[25]
load net lvl[26] -attr @rip lvl[26] -pin U2 lvl[26] -pin U4 lvl[26] -pin U5 changeLvl[26]
load net lvl[27] -attr @rip lvl[27] -pin U2 lvl[27] -pin U4 lvl[27] -pin U5 changeLvl[27]
load net lvl[28] -attr @rip lvl[28] -pin U2 lvl[28] -pin U4 lvl[28] -pin U5 changeLvl[28]
load net lvl[29] -attr @rip lvl[29] -pin U2 lvl[29] -pin U4 lvl[29] -pin U5 changeLvl[29]
load net lvl[2] -attr @rip lvl[2] -pin U2 lvl[2] -pin U4 lvl[2] -pin U5 changeLvl[2]
load net lvl[30] -attr @rip lvl[30] -pin U2 lvl[30] -pin U4 lvl[30] -pin U5 changeLvl[30]
load net lvl[31] -attr @rip lvl[31] -pin U2 lvl[31] -pin U4 lvl[31] -pin U5 changeLvl[31]
load net lvl[3] -attr @rip lvl[3] -pin U2 lvl[3] -pin U4 lvl[3] -pin U5 changeLvl[3]
load net lvl[4] -attr @rip lvl[4] -pin U2 lvl[4] -pin U4 lvl[4] -pin U5 changeLvl[4]
load net lvl[5] -attr @rip lvl[5] -pin U2 lvl[5] -pin U4 lvl[5] -pin U5 changeLvl[5]
load net lvl[6] -attr @rip lvl[6] -pin U2 lvl[6] -pin U4 lvl[6] -pin U5 changeLvl[6]
load net lvl[7] -attr @rip lvl[7] -pin U2 lvl[7] -pin U4 lvl[7] -pin U5 changeLvl[7]
load net lvl[8] -attr @rip lvl[8] -pin U2 lvl[8] -pin U4 lvl[8] -pin U5 changeLvl[8]
load net lvl[9] -attr @rip lvl[9] -pin U2 lvl[9] -pin U4 lvl[9] -pin U5 changeLvl[9]
load net marcheEnnemi[0] -attr @rip marche[0] -pin U2 marcheEnnemi[0] -pin U5 marche[0]
load net marcheEnnemi[1] -attr @rip marche[1] -pin U2 marcheEnnemi[1] -pin U5 marche[1]
load net marche[0] -attr @rip marche[0] -pin U2 marcheLaink[0] -pin U4 marche[0]
load net marche[1] -attr @rip marche[1] -pin U2 marcheLaink[1] -pin U4 marche[1]
load net pxl_clk -pin U0 clk_out1 -pin U1 CLK -pin U3 clk
netloc pxl_clk 1 1 3 230 100 NJ 100 NJ
load net reset -pin U4 reset -pin U5 reset -port reset
netloc reset 1 0 4 NJ 330 NJ 330 410 480 980J
load net right -pin U4 right -port right
netloc right 1 0 4 20J 500 NJ 500 NJ 500 800J
load net stopMouvement -pin U5 stopMouvement -port stopMouvement
netloc stopMouvement 1 0 3 NJ 360 NJ 360 NJ
load net up -pin U4 up -port up
netloc up 1 0 4 NJ 520 NJ 520 NJ 520 820J
load net vga_b[0] -attr @rip B[0] -pin U2 B[0] -port vga_b[0]
load net vga_b[1] -attr @rip B[1] -pin U2 B[1] -port vga_b[1]
load net vga_b[2] -attr @rip B[2] -pin U2 B[2] -port vga_b[2]
load net vga_b[3] -attr @rip B[3] -pin U2 B[3] -port vga_b[3]
load net vga_b[4] -attr @rip B[4] -pin U2 B[4] -port vga_b[4]
load net vga_g[0] -attr @rip G[0] -pin U2 G[0] -port vga_g[0]
load net vga_g[1] -attr @rip G[1] -pin U2 G[1] -port vga_g[1]
load net vga_g[2] -attr @rip G[2] -pin U2 G[2] -port vga_g[2]
load net vga_g[3] -attr @rip G[3] -pin U2 G[3] -port vga_g[3]
load net vga_g[4] -attr @rip G[4] -pin U2 G[4] -port vga_g[4]
load net vga_g[5] -attr @rip G[5] -pin U2 G[5] -port vga_g[5]
load net vga_hs -pin U1 HSYNC -port vga_hs
netloc vga_hs 1 4 2 NJ 60 NJ
load net vga_r[0] -attr @rip R[0] -pin U2 R[0] -port vga_r[0]
load net vga_r[1] -attr @rip R[1] -pin U2 R[1] -port vga_r[1]
load net vga_r[2] -attr @rip R[2] -pin U2 R[2] -port vga_r[2]
load net vga_r[3] -attr @rip R[3] -pin U2 R[3] -port vga_r[3]
load net vga_r[4] -attr @rip R[4] -pin U2 R[4] -port vga_r[4]
load net vga_vs -pin U1 VSYNC -port vga_vs
netloc vga_vs 1 4 2 NJ 100 NJ
load net xEnnemi[0] -attr @rip X[0] -pin U2 xEnnemi[0] -pin U4 xEnnemi[0] -pin U5 X[0]
load net xEnnemi[1] -attr @rip X[1] -pin U2 xEnnemi[1] -pin U4 xEnnemi[1] -pin U5 X[1]
load net xEnnemi[2] -attr @rip X[2] -pin U2 xEnnemi[2] -pin U4 xEnnemi[2] -pin U5 X[2]
load net xEnnemi[3] -attr @rip X[3] -pin U2 xEnnemi[3] -pin U4 xEnnemi[3] -pin U5 X[3]
load net xEnnemi[4] -attr @rip X[4] -pin U2 xEnnemi[4] -pin U4 xEnnemi[4] -pin U5 X[4]
load net xEnnemi[5] -attr @rip X[5] -pin U2 xEnnemi[5] -pin U4 xEnnemi[5] -pin U5 X[5]
load net xEnnemi[6] -attr @rip X[6] -pin U2 xEnnemi[6] -pin U4 xEnnemi[6] -pin U5 X[6]
load net xEnnemi[7] -attr @rip X[7] -pin U2 xEnnemi[7] -pin U4 xEnnemi[7] -pin U5 X[7]
load net xEnnemi[8] -attr @rip X[8] -pin U2 xEnnemi[8] -pin U4 xEnnemi[8] -pin U5 X[8]
load net xEnnemi[9] -attr @rip X[9] -pin U2 xEnnemi[9] -pin U4 xEnnemi[9] -pin U5 X[9]
load net xLaink[0] -attr @rip X[0] -pin U2 xLaink[0] -pin U4 X[0] -pin U5 xAttack[0]
load net xLaink[1] -attr @rip X[1] -pin U2 xLaink[1] -pin U4 X[1] -pin U5 xAttack[1]
load net xLaink[2] -attr @rip X[2] -pin U2 xLaink[2] -pin U4 X[2] -pin U5 xAttack[2]
load net xLaink[3] -attr @rip X[3] -pin U2 xLaink[3] -pin U4 X[3] -pin U5 xAttack[3]
load net xLaink[4] -attr @rip X[4] -pin U2 xLaink[4] -pin U4 X[4] -pin U5 xAttack[4]
load net xLaink[5] -attr @rip X[5] -pin U2 xLaink[5] -pin U4 X[5] -pin U5 xAttack[5]
load net xLaink[6] -attr @rip X[6] -pin U2 xLaink[6] -pin U4 X[6] -pin U5 xAttack[6]
load net xLaink[7] -attr @rip X[7] -pin U2 xLaink[7] -pin U4 X[7] -pin U5 xAttack[7]
load net xLaink[8] -attr @rip X[8] -pin U2 xLaink[8] -pin U4 X[8] -pin U5 xAttack[8]
load net xLaink[9] -attr @rip X[9] -pin U2 xLaink[9] -pin U4 X[9] -pin U5 xAttack[9]
load net yEnnemi[0] -attr @rip Y[0] -pin U2 yEnnemi[0] -pin U4 yEnnemi[0] -pin U5 Y[0]
load net yEnnemi[1] -attr @rip Y[1] -pin U2 yEnnemi[1] -pin U4 yEnnemi[1] -pin U5 Y[1]
load net yEnnemi[2] -attr @rip Y[2] -pin U2 yEnnemi[2] -pin U4 yEnnemi[2] -pin U5 Y[2]
load net yEnnemi[3] -attr @rip Y[3] -pin U2 yEnnemi[3] -pin U4 yEnnemi[3] -pin U5 Y[3]
load net yEnnemi[4] -attr @rip Y[4] -pin U2 yEnnemi[4] -pin U4 yEnnemi[4] -pin U5 Y[4]
load net yEnnemi[5] -attr @rip Y[5] -pin U2 yEnnemi[5] -pin U4 yEnnemi[5] -pin U5 Y[5]
load net yEnnemi[6] -attr @rip Y[6] -pin U2 yEnnemi[6] -pin U4 yEnnemi[6] -pin U5 Y[6]
load net yEnnemi[7] -attr @rip Y[7] -pin U2 yEnnemi[7] -pin U4 yEnnemi[7] -pin U5 Y[7]
load net yEnnemi[8] -attr @rip Y[8] -pin U2 yEnnemi[8] -pin U4 yEnnemi[8] -pin U5 Y[8]
load net yEnnemi[9] -attr @rip Y[9] -pin U2 yEnnemi[9] -pin U4 yEnnemi[9] -pin U5 Y[9]
load net yLaink[0] -attr @rip Y[0] -pin U2 yLaink[0] -pin U4 Y[0] -pin U5 yAttack[0]
load net yLaink[1] -attr @rip Y[1] -pin U2 yLaink[1] -pin U4 Y[1] -pin U5 yAttack[1]
load net yLaink[2] -attr @rip Y[2] -pin U2 yLaink[2] -pin U4 Y[2] -pin U5 yAttack[2]
load net yLaink[3] -attr @rip Y[3] -pin U2 yLaink[3] -pin U4 Y[3] -pin U5 yAttack[3]
load net yLaink[4] -attr @rip Y[4] -pin U2 yLaink[4] -pin U4 Y[4] -pin U5 yAttack[4]
load net yLaink[5] -attr @rip Y[5] -pin U2 yLaink[5] -pin U4 Y[5] -pin U5 yAttack[5]
load net yLaink[6] -attr @rip Y[6] -pin U2 yLaink[6] -pin U4 Y[6] -pin U5 yAttack[6]
load net yLaink[7] -attr @rip Y[7] -pin U2 yLaink[7] -pin U4 Y[7] -pin U5 yAttack[7]
load net yLaink[8] -attr @rip Y[8] -pin U2 yLaink[8] -pin U4 Y[8] -pin U5 yAttack[8]
load net yLaink[9] -attr @rip Y[9] -pin U2 yLaink[9] -pin U4 Y[9] -pin U5 yAttack[9]
load netBundle @vga_b 5 vga_b[4] vga_b[3] vga_b[2] vga_b[1] vga_b[0] -autobundled
netbloc @vga_b 1 5 1 1840J 370n
load netBundle @vga_g 6 vga_g[5] vga_g[4] vga_g[3] vga_g[2] vga_g[1] vga_g[0] -autobundled
netbloc @vga_g 1 5 1 NJ 400
load netBundle @vga_r 5 vga_r[4] vga_r[3] vga_r[2] vga_r[1] vga_r[0] -autobundled
netbloc @vga_r 1 5 1 1840J 420n
load netBundle @Xi 10 Xi[9] Xi[8] Xi[7] Xi[6] Xi[5] Xi[4] Xi[3] Xi[2] Xi[1] Xi[0] -autobundled
netbloc @Xi 1 4 1 1540 120n
load netBundle @Yi 9 Yi[8] Yi[7] Yi[6] Yi[5] Yi[4] Yi[3] Yi[2] Yi[1] Yi[0] -autobundled
netbloc @Yi 1 4 1 1520 140n
load netBundle @xLaink 10 xLaink[9] xLaink[8] xLaink[7] xLaink[6] xLaink[5] xLaink[4] xLaink[3] xLaink[2] xLaink[1] xLaink[0] -autobundled
netbloc @xLaink 1 2 3 450 540 NJ 540 1400
load netBundle @yLaink 10 yLaink[9] yLaink[8] yLaink[7] yLaink[6] yLaink[5] yLaink[4] yLaink[3] yLaink[2] yLaink[1] yLaink[0] -autobundled
netbloc @yLaink 1 2 3 470 560 NJ 560 1420
load netBundle @attackAnimation 2 attackAnimation[1] attackAnimation[0] -autobundled
netbloc @attackAnimation 1 4 1 1440 300n
load netBundle @direction 3 direction[2] direction[1] direction[0] -autobundled
netbloc @direction 1 2 3 490 200 980J 220 1460
load netBundle @lifeLaink 2 lifeLaink[1] lifeLaink[0] -autobundled
netbloc @lifeLaink 1 4 1 1440 400n
load netBundle @lvl 32 lvl[31] lvl[30] lvl[29] lvl[28] lvl[27] lvl[26] lvl[25] lvl[24] lvl[23] lvl[22] lvl[21] lvl[20] lvl[19] lvl[18] lvl[17] lvl[16] lvl[15] lvl[14] lvl[13] lvl[12] lvl[11] lvl[10] lvl[9] lvl[8] lvl[7] lvl[6] lvl[5] lvl[4] lvl[3] lvl[2] lvl[1] lvl[0] -autobundled
netbloc @lvl 1 2 3 430 580 NJ 580 1380
load netBundle @marche 2 marche[1] marche[0] -autobundled
netbloc @marche 1 4 1 1340 440n
load netBundle @xEnnemi 10 xEnnemi[9] xEnnemi[8] xEnnemi[7] xEnnemi[6] xEnnemi[5] xEnnemi[4] xEnnemi[3] xEnnemi[2] xEnnemi[1] xEnnemi[0] -autobundled
netbloc @xEnnemi 1 3 2 900 600 1520
load netBundle @yEnnemi 10 yEnnemi[9] yEnnemi[8] yEnnemi[7] yEnnemi[6] yEnnemi[5] yEnnemi[4] yEnnemi[3] yEnnemi[2] yEnnemi[1] yEnnemi[0] -autobundled
netbloc @yEnnemi 1 3 2 860 620 1540
load netBundle @directionEnnemi 3 directionEnnemi[2] directionEnnemi[1] directionEnnemi[0] -autobundled
netbloc @directionEnnemi 1 3 2 920 180 1500J
load netBundle @life 2 life[1] life[0] -autobundled
netbloc @life 1 3 2 880 500 1480J
load netBundle @marcheEnnemi 2 marcheEnnemi[1] marcheEnnemi[0] -autobundled
netbloc @marcheEnnemi 1 3 2 840 520 1360J
levelinfo -pg 1 0 90 280 630 1130 1710 1860
pagesize -pg 1 -db -bbox -sgen -160 0 1980 630
show
fullfit
#
# initialize ictrl to current module VGA_top work:VGA_top:NOFILE
ictrl init topinfo |
