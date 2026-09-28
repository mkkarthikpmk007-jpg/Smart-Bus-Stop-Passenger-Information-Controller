/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP5-3
// Date      : Sat Sep 26 04:36:32 2026
/////////////////////////////////////////////////////////////


module smart_bus ( clk, rst, data_valid, route_available, route_data, 
        alert_data, arrival_event, service_irq, emergency_irq, display_expire, 
        display_route_data, display_alert_data, upper_display_valid, 
        lower_display_valid, emergency_active, service_alert_active, 
        display_busy, selected_route );
  input [7:0] route_available;
  input [127:0] route_data;
  input [127:0] alert_data;
  input [7:0] arrival_event;
  input [7:0] service_irq;
  input [7:0] emergency_irq;
  output [15:0] display_route_data;
  output [15:0] display_alert_data;
  output [3:0] selected_route;
  input clk, rst, data_valid, display_expire;
  output upper_display_valid, lower_display_valid, emergency_active,
         service_alert_active, display_busy;
  wire   n327, N624, N625, N626, N627, N628, N629, N630, N631, N632, N633,
         N634, N635, N636, N637, N638, N639, N640, N641, N642, N643, N644,
         N645, N646, N647, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, display_busy, n326;
  wire   [7:0] pending_arrival;
  wire   [7:0] pending_service;
  wire   [7:0] pending_emergency;
  wire   [1:0] current_type;
  assign upper_display_valid = display_busy;

  DFFX1_RVT \current_type_reg[0]  ( .D(n313), .CLK(clk), .Q(current_type[0]), 
        .QN(n27) );
  DFFX1_RVT \pending_emergency_reg[0]  ( .D(N640), .CLK(clk), .Q(
        pending_emergency[0]) );
  DFFX1_RVT \pending_emergency_reg[1]  ( .D(N641), .CLK(clk), .Q(
        pending_emergency[1]) );
  DFFX1_RVT \pending_arrival_reg[1]  ( .D(N625), .CLK(clk), .Q(
        pending_arrival[1]) );
  DFFX1_RVT \pending_arrival_reg[7]  ( .D(N631), .CLK(clk), .Q(
        pending_arrival[7]) );
  DFFX1_RVT \pending_emergency_reg[3]  ( .D(N643), .CLK(clk), .Q(
        pending_emergency[3]) );
  DFFX1_RVT \pending_emergency_reg[2]  ( .D(N642), .CLK(clk), .Q(
        pending_emergency[2]) );
  DFFX1_RVT \pending_arrival_reg[3]  ( .D(N627), .CLK(clk), .Q(
        pending_arrival[3]) );
  DFFX1_RVT \pending_arrival_reg[2]  ( .D(N626), .CLK(clk), .Q(
        pending_arrival[2]) );
  DFFX1_RVT \pending_emergency_reg[5]  ( .D(N645), .CLK(clk), .Q(
        pending_emergency[5]) );
  DFFX1_RVT \pending_emergency_reg[4]  ( .D(N644), .CLK(clk), .Q(
        pending_emergency[4]) );
  DFFX1_RVT \pending_emergency_reg[7]  ( .D(N647), .CLK(clk), .Q(
        pending_emergency[7]) );
  DFFX1_RVT \pending_emergency_reg[6]  ( .D(N646), .CLK(clk), .Q(
        pending_emergency[6]) );
  DFFX1_RVT \pending_service_reg[0]  ( .D(N632), .CLK(clk), .Q(
        pending_service[0]) );
  DFFX1_RVT \pending_service_reg[1]  ( .D(N633), .CLK(clk), .Q(
        pending_service[1]) );
  DFFX1_RVT \pending_service_reg[3]  ( .D(N635), .CLK(clk), .Q(
        pending_service[3]) );
  DFFX1_RVT \pending_service_reg[5]  ( .D(N637), .CLK(clk), .Q(
        pending_service[5]) );
  DFFX1_RVT \pending_service_reg[2]  ( .D(N634), .CLK(clk), .Q(
        pending_service[2]) );
  DFFX1_RVT \pending_service_reg[4]  ( .D(N636), .CLK(clk), .Q(
        pending_service[4]) );
  DFFX1_RVT \pending_service_reg[7]  ( .D(N639), .CLK(clk), .Q(
        pending_service[7]) );
  DFFX1_RVT \pending_service_reg[6]  ( .D(N638), .CLK(clk), .Q(
        pending_service[6]) );
  DFFX1_RVT \pending_arrival_reg[0]  ( .D(N624), .CLK(clk), .Q(
        pending_arrival[0]) );
  DFFX1_RVT display_busy_reg ( .D(n312), .CLK(clk), .Q(n327), .QN(n4) );
  DFFX1_RVT \pending_arrival_reg[6]  ( .D(N630), .CLK(clk), .Q(
        pending_arrival[6]) );
  DFFX1_RVT \pending_arrival_reg[5]  ( .D(N629), .CLK(clk), .Q(
        pending_arrival[5]) );
  DFFX1_RVT \pending_arrival_reg[4]  ( .D(N628), .CLK(clk), .Q(
        pending_arrival[4]) );
  DFFX1_RVT \current_route_reg[3]  ( .D(n307), .CLK(clk), .Q(selected_route[3]) );
  DFFX1_RVT \current_type_reg[1]  ( .D(n311), .CLK(clk), .Q(current_type[1])
         );
  DFFX1_RVT \current_route_reg[0]  ( .D(n310), .CLK(clk), .Q(selected_route[0]), .QN(n3) );
  DFFX1_RVT \current_route_reg[1]  ( .D(n309), .CLK(clk), .Q(selected_route[1]), .QN(n2) );
  DFFX1_RVT \current_route_reg[2]  ( .D(n308), .CLK(clk), .Q(selected_route[2]), .QN(n1) );
  NOR4X1_RVT U6 ( .A1(n250), .A2(n252), .A3(n264), .A4(n267), .Y(n300) );
  NOR4X1_RVT U7 ( .A1(n236), .A2(n234), .A3(n232), .A4(n230), .Y(n305) );
  NOR4X1_RVT U8 ( .A1(n221), .A2(n219), .A3(n216), .A4(n213), .Y(n306) );
  AND2X1_RVT U36 ( .A1(n33), .A2(n27), .Y(service_alert_active) );
  AND2X1_RVT U37 ( .A1(selected_route[3]), .A2(n34), .Y(n307) );
  AO22X1_RVT U38 ( .A1(n5), .A2(selected_route[2]), .A3(n35), .A4(n36), .Y(
        n308) );
  AO222X1_RVT U39 ( .A1(n37), .A2(n38), .A3(n39), .A4(n40), .A5(
        selected_route[2]), .A6(n10), .Y(n36) );
  NAND4X0_RVT U40 ( .A1(n41), .A2(n42), .A3(n43), .A4(n44), .Y(n40) );
  AO22X1_RVT U41 ( .A1(selected_route[1]), .A2(n5), .A3(n35), .A4(n45), .Y(
        n309) );
  AO222X1_RVT U42 ( .A1(n46), .A2(n37), .A3(n39), .A4(n47), .A5(
        selected_route[1]), .A6(n10), .Y(n45) );
  NAND3X0_RVT U43 ( .A1(n42), .A2(n48), .A3(n41), .Y(n47) );
  AO22X1_RVT U44 ( .A1(selected_route[0]), .A2(n5), .A3(n35), .A4(n49), .Y(
        n310) );
  AO222X1_RVT U45 ( .A1(n50), .A2(n37), .A3(n39), .A4(n51), .A5(
        selected_route[0]), .A6(n10), .Y(n49) );
  NAND2X0_RVT U46 ( .A1(n52), .A2(n41), .Y(n51) );
  NAND3X0_RVT U47 ( .A1(n53), .A2(n42), .A3(route_available[7]), .Y(n41) );
  NAND2X0_RVT U48 ( .A1(route_available[6]), .A2(n53), .Y(n42) );
  AND3X1_RVT U49 ( .A1(n48), .A2(n44), .A3(n52), .Y(n53) );
  AND3X1_RVT U50 ( .A1(n43), .A2(n31), .A3(n54), .Y(n52) );
  NAND2X0_RVT U51 ( .A1(route_available[3]), .A2(n30), .Y(n54) );
  NAND4X0_RVT U52 ( .A1(route_available[5]), .A2(n48), .A3(n44), .A4(n31), .Y(
        n43) );
  NAND3X0_RVT U53 ( .A1(n29), .A2(n31), .A3(route_available[4]), .Y(n44) );
  NAND2X0_RVT U54 ( .A1(n55), .A2(n31), .Y(n48) );
  NOR2X0_RVT U55 ( .A1(n56), .A2(n324), .Y(n39) );
  NAND4X0_RVT U56 ( .A1(n324), .A2(n57), .A3(n58), .A4(n32), .Y(n37) );
  AO22X1_RVT U57 ( .A1(current_type[1]), .A2(n34), .A3(n35), .A4(n59), .Y(n311) );
  OA221X1_RVT U58 ( .A1(n60), .A2(n61), .A3(n62), .A4(n63), .A5(n323), .Y(n312) );
  NAND2X0_RVT U59 ( .A1(display_expire), .A2(n23), .Y(n61) );
  NAND3X0_RVT U60 ( .A1(n64), .A2(n65), .A3(n324), .Y(n60) );
  AO22X1_RVT U61 ( .A1(current_type[0]), .A2(n34), .A3(n35), .A4(n66), .Y(n313) );
  AO221X1_RVT U62 ( .A1(n67), .A2(n18), .A3(display_expire), .A4(n13), .A5(n68), .Y(n66) );
  AND2X1_RVT U63 ( .A1(n69), .A2(n4), .Y(n67) );
  AND2X1_RVT U64 ( .A1(n70), .A2(n323), .Y(n35) );
  AO21X1_RVT U65 ( .A1(n10), .A2(n323), .A3(n5), .Y(n34) );
  OR3X1_RVT U66 ( .A1(n324), .A2(rst), .A3(n63), .Y(n70) );
  AO21X1_RVT U67 ( .A1(data_valid), .A2(n71), .A3(n56), .Y(n63) );
  OR2X1_RVT U68 ( .A1(n59), .A2(n69), .Y(n56) );
  OR2X1_RVT U69 ( .A1(route_available[3]), .A2(route_available[2]), .Y(n55) );
  AO21X1_RVT U70 ( .A1(current_type[0]), .A2(n324), .A3(n33), .Y(
        lower_display_valid) );
  AND2X1_RVT U71 ( .A1(current_type[0]), .A2(n33), .Y(emergency_active) );
  AND2X1_RVT U72 ( .A1(n324), .A2(current_type[1]), .Y(n33) );
  OA21X1_RVT U73 ( .A1(n73), .A2(n74), .A3(n324), .Y(display_route_data[9]) );
  AO221X1_RVT U74 ( .A1(route_data[25]), .A2(n322), .A3(route_data[57]), .A4(
        n320), .A5(n77), .Y(n74) );
  AO22X1_RVT U75 ( .A1(route_data[121]), .A2(n78), .A3(route_data[89]), .A4(
        n318), .Y(n77) );
  AO221X1_RVT U76 ( .A1(route_data[9]), .A2(n317), .A3(route_data[41]), .A4(
        n81), .A5(n82), .Y(n73) );
  AO22X1_RVT U77 ( .A1(route_data[105]), .A2(n83), .A3(route_data[73]), .A4(
        n314), .Y(n82) );
  OA21X1_RVT U78 ( .A1(n85), .A2(n86), .A3(display_busy), .Y(
        display_route_data[8]) );
  AO221X1_RVT U79 ( .A1(route_data[24]), .A2(n322), .A3(route_data[56]), .A4(
        n76), .A5(n87), .Y(n86) );
  AO22X1_RVT U80 ( .A1(route_data[120]), .A2(n319), .A3(route_data[88]), .A4(
        n79), .Y(n87) );
  AO221X1_RVT U81 ( .A1(route_data[8]), .A2(n317), .A3(route_data[40]), .A4(
        n81), .A5(n88), .Y(n85) );
  AO22X1_RVT U82 ( .A1(route_data[104]), .A2(n83), .A3(route_data[72]), .A4(
        n84), .Y(n88) );
  OA21X1_RVT U83 ( .A1(n89), .A2(n90), .A3(display_busy), .Y(
        display_route_data[7]) );
  AO221X1_RVT U84 ( .A1(route_data[23]), .A2(n322), .A3(route_data[55]), .A4(
        n320), .A5(n91), .Y(n90) );
  AO22X1_RVT U85 ( .A1(route_data[119]), .A2(n319), .A3(route_data[87]), .A4(
        n318), .Y(n91) );
  AO221X1_RVT U86 ( .A1(route_data[7]), .A2(n317), .A3(route_data[39]), .A4(
        n81), .A5(n92), .Y(n89) );
  AO22X1_RVT U87 ( .A1(route_data[103]), .A2(n315), .A3(route_data[71]), .A4(
        n314), .Y(n92) );
  OA21X1_RVT U88 ( .A1(n93), .A2(n94), .A3(display_busy), .Y(
        display_route_data[6]) );
  AO221X1_RVT U89 ( .A1(route_data[22]), .A2(n322), .A3(route_data[54]), .A4(
        n320), .A5(n95), .Y(n94) );
  AO22X1_RVT U90 ( .A1(route_data[118]), .A2(n319), .A3(route_data[86]), .A4(
        n318), .Y(n95) );
  AO221X1_RVT U91 ( .A1(route_data[6]), .A2(n317), .A3(route_data[38]), .A4(
        n81), .A5(n96), .Y(n93) );
  AO22X1_RVT U92 ( .A1(route_data[102]), .A2(n315), .A3(route_data[70]), .A4(
        n314), .Y(n96) );
  OA21X1_RVT U93 ( .A1(n97), .A2(n98), .A3(display_busy), .Y(
        display_route_data[5]) );
  AO221X1_RVT U94 ( .A1(route_data[21]), .A2(n322), .A3(route_data[53]), .A4(
        n76), .A5(n99), .Y(n98) );
  AO22X1_RVT U95 ( .A1(route_data[117]), .A2(n78), .A3(route_data[85]), .A4(
        n79), .Y(n99) );
  AO221X1_RVT U96 ( .A1(route_data[5]), .A2(n80), .A3(route_data[37]), .A4(
        n316), .A5(n100), .Y(n97) );
  AO22X1_RVT U97 ( .A1(route_data[101]), .A2(n315), .A3(route_data[69]), .A4(
        n314), .Y(n100) );
  OA21X1_RVT U98 ( .A1(n101), .A2(n102), .A3(display_busy), .Y(
        display_route_data[4]) );
  AO221X1_RVT U99 ( .A1(route_data[20]), .A2(n322), .A3(route_data[52]), .A4(
        n76), .A5(n103), .Y(n102) );
  AO22X1_RVT U100 ( .A1(route_data[116]), .A2(n78), .A3(route_data[84]), .A4(
        n79), .Y(n103) );
  AO221X1_RVT U101 ( .A1(route_data[4]), .A2(n80), .A3(route_data[36]), .A4(
        n316), .A5(n104), .Y(n101) );
  AO22X1_RVT U102 ( .A1(route_data[100]), .A2(n83), .A3(route_data[68]), .A4(
        n84), .Y(n104) );
  OA21X1_RVT U103 ( .A1(n105), .A2(n106), .A3(display_busy), .Y(
        display_route_data[3]) );
  AO221X1_RVT U104 ( .A1(route_data[19]), .A2(n322), .A3(route_data[51]), .A4(
        n76), .A5(n107), .Y(n106) );
  AO22X1_RVT U105 ( .A1(route_data[115]), .A2(n78), .A3(route_data[83]), .A4(
        n79), .Y(n107) );
  AO221X1_RVT U106 ( .A1(route_data[3]), .A2(n80), .A3(route_data[35]), .A4(
        n316), .A5(n108), .Y(n105) );
  AO22X1_RVT U107 ( .A1(route_data[99]), .A2(n83), .A3(route_data[67]), .A4(
        n84), .Y(n108) );
  OA21X1_RVT U108 ( .A1(n109), .A2(n110), .A3(display_busy), .Y(
        display_route_data[2]) );
  AO221X1_RVT U109 ( .A1(route_data[18]), .A2(n322), .A3(route_data[50]), .A4(
        n76), .A5(n111), .Y(n110) );
  AO22X1_RVT U110 ( .A1(route_data[114]), .A2(n78), .A3(route_data[82]), .A4(
        n79), .Y(n111) );
  AO221X1_RVT U111 ( .A1(route_data[2]), .A2(n80), .A3(route_data[34]), .A4(
        n316), .A5(n112), .Y(n109) );
  AO22X1_RVT U112 ( .A1(route_data[98]), .A2(n83), .A3(route_data[66]), .A4(
        n84), .Y(n112) );
  OA21X1_RVT U113 ( .A1(n113), .A2(n114), .A3(display_busy), .Y(
        display_route_data[1]) );
  AO221X1_RVT U114 ( .A1(route_data[17]), .A2(n321), .A3(route_data[49]), .A4(
        n320), .A5(n115), .Y(n114) );
  AO22X1_RVT U115 ( .A1(route_data[113]), .A2(n319), .A3(route_data[81]), .A4(
        n318), .Y(n115) );
  AO221X1_RVT U116 ( .A1(route_data[1]), .A2(n317), .A3(route_data[33]), .A4(
        n316), .A5(n116), .Y(n113) );
  AO22X1_RVT U117 ( .A1(route_data[97]), .A2(n83), .A3(route_data[65]), .A4(
        n84), .Y(n116) );
  OA21X1_RVT U118 ( .A1(n117), .A2(n118), .A3(display_busy), .Y(
        display_route_data[15]) );
  AO221X1_RVT U119 ( .A1(route_data[31]), .A2(n321), .A3(route_data[63]), .A4(
        n320), .A5(n119), .Y(n118) );
  AO22X1_RVT U120 ( .A1(route_data[127]), .A2(n319), .A3(route_data[95]), .A4(
        n318), .Y(n119) );
  AO221X1_RVT U121 ( .A1(route_data[15]), .A2(n80), .A3(route_data[47]), .A4(
        n316), .A5(n120), .Y(n117) );
  AO22X1_RVT U122 ( .A1(route_data[111]), .A2(n315), .A3(route_data[79]), .A4(
        n314), .Y(n120) );
  OA21X1_RVT U123 ( .A1(n121), .A2(n122), .A3(display_busy), .Y(
        display_route_data[14]) );
  AO221X1_RVT U124 ( .A1(route_data[30]), .A2(n321), .A3(route_data[62]), .A4(
        n76), .A5(n123), .Y(n122) );
  AO22X1_RVT U125 ( .A1(route_data[126]), .A2(n78), .A3(route_data[94]), .A4(
        n79), .Y(n123) );
  AO221X1_RVT U126 ( .A1(route_data[14]), .A2(n80), .A3(route_data[46]), .A4(
        n316), .A5(n124), .Y(n121) );
  AO22X1_RVT U127 ( .A1(route_data[110]), .A2(n83), .A3(route_data[78]), .A4(
        n84), .Y(n124) );
  OA21X1_RVT U128 ( .A1(n125), .A2(n126), .A3(display_busy), .Y(
        display_route_data[13]) );
  AO221X1_RVT U129 ( .A1(route_data[29]), .A2(n321), .A3(route_data[61]), .A4(
        n76), .A5(n127), .Y(n126) );
  AO22X1_RVT U130 ( .A1(route_data[125]), .A2(n78), .A3(route_data[93]), .A4(
        n79), .Y(n127) );
  AO221X1_RVT U131 ( .A1(route_data[13]), .A2(n80), .A3(route_data[45]), .A4(
        n316), .A5(n128), .Y(n125) );
  AO22X1_RVT U132 ( .A1(route_data[109]), .A2(n83), .A3(route_data[77]), .A4(
        n84), .Y(n128) );
  OA21X1_RVT U133 ( .A1(n129), .A2(n130), .A3(display_busy), .Y(
        display_route_data[12]) );
  AO221X1_RVT U134 ( .A1(route_data[28]), .A2(n321), .A3(route_data[60]), .A4(
        n76), .A5(n131), .Y(n130) );
  AO22X1_RVT U135 ( .A1(route_data[124]), .A2(n78), .A3(route_data[92]), .A4(
        n79), .Y(n131) );
  AO221X1_RVT U136 ( .A1(route_data[12]), .A2(n80), .A3(route_data[44]), .A4(
        n316), .A5(n132), .Y(n129) );
  AO22X1_RVT U137 ( .A1(route_data[108]), .A2(n83), .A3(route_data[76]), .A4(
        n84), .Y(n132) );
  OA21X1_RVT U138 ( .A1(n133), .A2(n134), .A3(display_busy), .Y(
        display_route_data[11]) );
  AO221X1_RVT U139 ( .A1(route_data[27]), .A2(n321), .A3(route_data[59]), .A4(
        n76), .A5(n135), .Y(n134) );
  AO22X1_RVT U140 ( .A1(route_data[123]), .A2(n78), .A3(route_data[91]), .A4(
        n79), .Y(n135) );
  AO221X1_RVT U141 ( .A1(route_data[11]), .A2(n80), .A3(route_data[43]), .A4(
        n316), .A5(n136), .Y(n133) );
  AO22X1_RVT U142 ( .A1(route_data[107]), .A2(n83), .A3(route_data[75]), .A4(
        n84), .Y(n136) );
  OA21X1_RVT U143 ( .A1(n137), .A2(n138), .A3(display_busy), .Y(
        display_route_data[10]) );
  AO221X1_RVT U144 ( .A1(route_data[26]), .A2(n321), .A3(route_data[58]), .A4(
        n76), .A5(n139), .Y(n138) );
  AO22X1_RVT U145 ( .A1(route_data[122]), .A2(n78), .A3(route_data[90]), .A4(
        n79), .Y(n139) );
  AO221X1_RVT U146 ( .A1(route_data[10]), .A2(n80), .A3(route_data[42]), .A4(
        n316), .A5(n140), .Y(n137) );
  AO22X1_RVT U147 ( .A1(route_data[106]), .A2(n83), .A3(route_data[74]), .A4(
        n84), .Y(n140) );
  OA21X1_RVT U148 ( .A1(n141), .A2(n142), .A3(display_busy), .Y(
        display_route_data[0]) );
  AO221X1_RVT U149 ( .A1(route_data[16]), .A2(n321), .A3(route_data[48]), .A4(
        n76), .A5(n143), .Y(n142) );
  AO22X1_RVT U150 ( .A1(route_data[112]), .A2(n78), .A3(route_data[80]), .A4(
        n79), .Y(n143) );
  AO221X1_RVT U151 ( .A1(route_data[0]), .A2(n80), .A3(route_data[32]), .A4(
        n316), .A5(n144), .Y(n141) );
  AO22X1_RVT U152 ( .A1(route_data[96]), .A2(n83), .A3(route_data[64]), .A4(
        n84), .Y(n144) );
  OA21X1_RVT U153 ( .A1(n145), .A2(n146), .A3(display_busy), .Y(
        display_alert_data[9]) );
  AO221X1_RVT U154 ( .A1(alert_data[25]), .A2(n321), .A3(alert_data[57]), .A4(
        n76), .A5(n147), .Y(n146) );
  AO22X1_RVT U155 ( .A1(alert_data[121]), .A2(n78), .A3(alert_data[89]), .A4(
        n79), .Y(n147) );
  AO221X1_RVT U156 ( .A1(alert_data[9]), .A2(n80), .A3(alert_data[41]), .A4(
        n316), .A5(n148), .Y(n145) );
  AO22X1_RVT U157 ( .A1(alert_data[105]), .A2(n83), .A3(alert_data[73]), .A4(
        n84), .Y(n148) );
  OA21X1_RVT U158 ( .A1(n149), .A2(n150), .A3(display_busy), .Y(
        display_alert_data[8]) );
  AO221X1_RVT U159 ( .A1(alert_data[24]), .A2(n321), .A3(alert_data[56]), .A4(
        n76), .A5(n151), .Y(n150) );
  AO22X1_RVT U160 ( .A1(alert_data[120]), .A2(n78), .A3(alert_data[88]), .A4(
        n79), .Y(n151) );
  AO221X1_RVT U161 ( .A1(alert_data[8]), .A2(n80), .A3(alert_data[40]), .A4(
        n316), .A5(n152), .Y(n149) );
  AO22X1_RVT U162 ( .A1(alert_data[104]), .A2(n83), .A3(alert_data[72]), .A4(
        n84), .Y(n152) );
  OA21X1_RVT U163 ( .A1(n153), .A2(n154), .A3(display_busy), .Y(
        display_alert_data[7]) );
  AO221X1_RVT U164 ( .A1(alert_data[23]), .A2(n321), .A3(alert_data[55]), .A4(
        n76), .A5(n155), .Y(n154) );
  AO22X1_RVT U165 ( .A1(alert_data[119]), .A2(n78), .A3(alert_data[87]), .A4(
        n79), .Y(n155) );
  AO221X1_RVT U166 ( .A1(alert_data[7]), .A2(n80), .A3(alert_data[39]), .A4(
        n316), .A5(n156), .Y(n153) );
  AO22X1_RVT U167 ( .A1(alert_data[103]), .A2(n83), .A3(alert_data[71]), .A4(
        n84), .Y(n156) );
  OA21X1_RVT U168 ( .A1(n157), .A2(n158), .A3(display_busy), .Y(
        display_alert_data[6]) );
  AO221X1_RVT U169 ( .A1(alert_data[22]), .A2(n321), .A3(alert_data[54]), .A4(
        n76), .A5(n159), .Y(n158) );
  AO22X1_RVT U170 ( .A1(alert_data[118]), .A2(n78), .A3(alert_data[86]), .A4(
        n79), .Y(n159) );
  AO221X1_RVT U171 ( .A1(alert_data[6]), .A2(n80), .A3(alert_data[38]), .A4(
        n316), .A5(n160), .Y(n157) );
  AO22X1_RVT U172 ( .A1(alert_data[102]), .A2(n83), .A3(alert_data[70]), .A4(
        n84), .Y(n160) );
  OA21X1_RVT U173 ( .A1(n161), .A2(n162), .A3(display_busy), .Y(
        display_alert_data[5]) );
  AO221X1_RVT U174 ( .A1(alert_data[21]), .A2(n322), .A3(alert_data[53]), .A4(
        n320), .A5(n163), .Y(n162) );
  AO22X1_RVT U175 ( .A1(alert_data[117]), .A2(n78), .A3(alert_data[85]), .A4(
        n318), .Y(n163) );
  AO221X1_RVT U176 ( .A1(alert_data[5]), .A2(n317), .A3(alert_data[37]), .A4(
        n81), .A5(n164), .Y(n161) );
  AO22X1_RVT U177 ( .A1(alert_data[101]), .A2(n315), .A3(alert_data[69]), .A4(
        n314), .Y(n164) );
  OA21X1_RVT U178 ( .A1(n165), .A2(n166), .A3(n324), .Y(display_alert_data[4])
         );
  AO221X1_RVT U179 ( .A1(alert_data[20]), .A2(n322), .A3(alert_data[52]), .A4(
        n320), .A5(n167), .Y(n166) );
  AO22X1_RVT U180 ( .A1(alert_data[116]), .A2(n319), .A3(alert_data[84]), .A4(
        n318), .Y(n167) );
  AO221X1_RVT U181 ( .A1(alert_data[4]), .A2(n317), .A3(alert_data[36]), .A4(
        n81), .A5(n168), .Y(n165) );
  AO22X1_RVT U182 ( .A1(alert_data[100]), .A2(n315), .A3(alert_data[68]), .A4(
        n314), .Y(n168) );
  OA21X1_RVT U183 ( .A1(n169), .A2(n170), .A3(n324), .Y(display_alert_data[3])
         );
  AO221X1_RVT U184 ( .A1(alert_data[19]), .A2(n322), .A3(alert_data[51]), .A4(
        n320), .A5(n171), .Y(n170) );
  AO22X1_RVT U185 ( .A1(alert_data[115]), .A2(n319), .A3(alert_data[83]), .A4(
        n318), .Y(n171) );
  AO221X1_RVT U186 ( .A1(alert_data[3]), .A2(n317), .A3(alert_data[35]), .A4(
        n81), .A5(n172), .Y(n169) );
  AO22X1_RVT U187 ( .A1(alert_data[99]), .A2(n315), .A3(alert_data[67]), .A4(
        n314), .Y(n172) );
  OA21X1_RVT U188 ( .A1(n173), .A2(n174), .A3(n324), .Y(display_alert_data[2])
         );
  AO221X1_RVT U189 ( .A1(alert_data[18]), .A2(n322), .A3(alert_data[50]), .A4(
        n320), .A5(n175), .Y(n174) );
  AO22X1_RVT U190 ( .A1(alert_data[114]), .A2(n319), .A3(alert_data[82]), .A4(
        n318), .Y(n175) );
  AO221X1_RVT U191 ( .A1(alert_data[2]), .A2(n317), .A3(alert_data[34]), .A4(
        n81), .A5(n176), .Y(n173) );
  AO22X1_RVT U192 ( .A1(alert_data[98]), .A2(n315), .A3(alert_data[66]), .A4(
        n314), .Y(n176) );
  OA21X1_RVT U193 ( .A1(n177), .A2(n178), .A3(display_busy), .Y(
        display_alert_data[1]) );
  AO221X1_RVT U194 ( .A1(alert_data[17]), .A2(n321), .A3(alert_data[49]), .A4(
        n320), .A5(n179), .Y(n178) );
  AO22X1_RVT U195 ( .A1(alert_data[113]), .A2(n319), .A3(alert_data[81]), .A4(
        n318), .Y(n179) );
  AO221X1_RVT U196 ( .A1(alert_data[1]), .A2(n317), .A3(alert_data[33]), .A4(
        n81), .A5(n180), .Y(n177) );
  AO22X1_RVT U197 ( .A1(alert_data[97]), .A2(n315), .A3(alert_data[65]), .A4(
        n314), .Y(n180) );
  OA21X1_RVT U198 ( .A1(n181), .A2(n182), .A3(n324), .Y(display_alert_data[15]) );
  AO221X1_RVT U199 ( .A1(alert_data[31]), .A2(n322), .A3(alert_data[63]), .A4(
        n320), .A5(n183), .Y(n182) );
  AO22X1_RVT U200 ( .A1(alert_data[127]), .A2(n319), .A3(alert_data[95]), .A4(
        n318), .Y(n183) );
  AO221X1_RVT U201 ( .A1(alert_data[15]), .A2(n317), .A3(alert_data[47]), .A4(
        n81), .A5(n184), .Y(n181) );
  AO22X1_RVT U202 ( .A1(alert_data[111]), .A2(n315), .A3(alert_data[79]), .A4(
        n314), .Y(n184) );
  OA21X1_RVT U203 ( .A1(n185), .A2(n186), .A3(n324), .Y(display_alert_data[14]) );
  AO221X1_RVT U204 ( .A1(alert_data[30]), .A2(n75), .A3(alert_data[62]), .A4(
        n320), .A5(n187), .Y(n186) );
  AO22X1_RVT U205 ( .A1(alert_data[126]), .A2(n319), .A3(alert_data[94]), .A4(
        n318), .Y(n187) );
  AO221X1_RVT U206 ( .A1(alert_data[14]), .A2(n317), .A3(alert_data[46]), .A4(
        n81), .A5(n188), .Y(n185) );
  AO22X1_RVT U207 ( .A1(alert_data[110]), .A2(n315), .A3(alert_data[78]), .A4(
        n314), .Y(n188) );
  OA21X1_RVT U208 ( .A1(n189), .A2(n190), .A3(n324), .Y(display_alert_data[13]) );
  AO221X1_RVT U209 ( .A1(alert_data[29]), .A2(n75), .A3(alert_data[61]), .A4(
        n320), .A5(n191), .Y(n190) );
  AO22X1_RVT U210 ( .A1(alert_data[125]), .A2(n319), .A3(alert_data[93]), .A4(
        n318), .Y(n191) );
  AO221X1_RVT U211 ( .A1(alert_data[13]), .A2(n317), .A3(alert_data[45]), .A4(
        n316), .A5(n192), .Y(n189) );
  AO22X1_RVT U212 ( .A1(alert_data[109]), .A2(n315), .A3(alert_data[77]), .A4(
        n314), .Y(n192) );
  OA21X1_RVT U213 ( .A1(n193), .A2(n194), .A3(n324), .Y(display_alert_data[12]) );
  AO221X1_RVT U214 ( .A1(alert_data[28]), .A2(n75), .A3(alert_data[60]), .A4(
        n320), .A5(n195), .Y(n194) );
  AO22X1_RVT U215 ( .A1(alert_data[124]), .A2(n319), .A3(alert_data[92]), .A4(
        n318), .Y(n195) );
  AO221X1_RVT U216 ( .A1(alert_data[12]), .A2(n317), .A3(alert_data[44]), .A4(
        n81), .A5(n196), .Y(n193) );
  AO22X1_RVT U217 ( .A1(alert_data[108]), .A2(n315), .A3(alert_data[76]), .A4(
        n314), .Y(n196) );
  OA21X1_RVT U218 ( .A1(n197), .A2(n198), .A3(n324), .Y(display_alert_data[11]) );
  AO221X1_RVT U219 ( .A1(alert_data[27]), .A2(n75), .A3(alert_data[59]), .A4(
        n320), .A5(n199), .Y(n198) );
  AO22X1_RVT U220 ( .A1(alert_data[123]), .A2(n319), .A3(alert_data[91]), .A4(
        n318), .Y(n199) );
  AO221X1_RVT U221 ( .A1(alert_data[11]), .A2(n317), .A3(alert_data[43]), .A4(
        n81), .A5(n200), .Y(n197) );
  AO22X1_RVT U222 ( .A1(alert_data[107]), .A2(n315), .A3(alert_data[75]), .A4(
        n314), .Y(n200) );
  OA21X1_RVT U223 ( .A1(n201), .A2(n202), .A3(n324), .Y(display_alert_data[10]) );
  AO221X1_RVT U224 ( .A1(alert_data[26]), .A2(n75), .A3(alert_data[58]), .A4(
        n320), .A5(n203), .Y(n202) );
  AO22X1_RVT U225 ( .A1(alert_data[122]), .A2(n319), .A3(alert_data[90]), .A4(
        n318), .Y(n203) );
  AO221X1_RVT U226 ( .A1(alert_data[10]), .A2(n317), .A3(alert_data[42]), .A4(
        n81), .A5(n204), .Y(n201) );
  AO22X1_RVT U227 ( .A1(alert_data[106]), .A2(n315), .A3(alert_data[74]), .A4(
        n314), .Y(n204) );
  OA21X1_RVT U228 ( .A1(n205), .A2(n206), .A3(n324), .Y(display_alert_data[0])
         );
  AO221X1_RVT U229 ( .A1(alert_data[16]), .A2(n75), .A3(alert_data[48]), .A4(
        n320), .A5(n207), .Y(n206) );
  AO22X1_RVT U230 ( .A1(alert_data[112]), .A2(n319), .A3(alert_data[80]), .A4(
        n318), .Y(n207) );
  AND2X1_RVT U231 ( .A1(n208), .A2(selected_route[0]), .Y(n79) );
  AND2X1_RVT U232 ( .A1(n209), .A2(selected_route[0]), .Y(n78) );
  AND2X1_RVT U233 ( .A1(n210), .A2(selected_route[0]), .Y(n76) );
  AND2X1_RVT U234 ( .A1(n211), .A2(selected_route[0]), .Y(n75) );
  AO221X1_RVT U235 ( .A1(alert_data[0]), .A2(n317), .A3(alert_data[32]), .A4(
        n81), .A5(n212), .Y(n205) );
  AO22X1_RVT U236 ( .A1(alert_data[96]), .A2(n315), .A3(alert_data[64]), .A4(
        n314), .Y(n212) );
  AND2X1_RVT U237 ( .A1(n208), .A2(n3), .Y(n84) );
  AND2X1_RVT U238 ( .A1(selected_route[2]), .A2(n2), .Y(n208) );
  AND2X1_RVT U239 ( .A1(n209), .A2(n3), .Y(n83) );
  AND2X1_RVT U240 ( .A1(selected_route[1]), .A2(selected_route[2]), .Y(n209)
         );
  AND2X1_RVT U241 ( .A1(n210), .A2(n3), .Y(n81) );
  AND2X1_RVT U242 ( .A1(selected_route[1]), .A2(n1), .Y(n210) );
  AND2X1_RVT U243 ( .A1(n211), .A2(n3), .Y(n80) );
  AND2X1_RVT U244 ( .A1(n2), .A2(n1), .Y(n211) );
  AND3X1_RVT U245 ( .A1(n213), .A2(n323), .A3(n214), .Y(N647) );
  NAND2X0_RVT U246 ( .A1(n215), .A2(n11), .Y(n214) );
  AND3X1_RVT U247 ( .A1(n216), .A2(n323), .A3(n217), .Y(N646) );
  NAND2X0_RVT U248 ( .A1(n215), .A2(n218), .Y(n217) );
  AND3X1_RVT U249 ( .A1(n219), .A2(n323), .A3(n220), .Y(N645) );
  NAND2X0_RVT U250 ( .A1(n11), .A2(n38), .Y(n220) );
  AND3X1_RVT U251 ( .A1(n221), .A2(n323), .A3(n222), .Y(N644) );
  NAND2X0_RVT U252 ( .A1(n38), .A2(n218), .Y(n222) );
  AND3X1_RVT U253 ( .A1(n223), .A2(n323), .A3(n224), .Y(N643) );
  NAND2X0_RVT U254 ( .A1(n11), .A2(n46), .Y(n224) );
  AND3X1_RVT U255 ( .A1(n226), .A2(n323), .A3(n227), .Y(N642) );
  NAND2X0_RVT U256 ( .A1(n46), .A2(n218), .Y(n227) );
  AND3X1_RVT U257 ( .A1(n228), .A2(n323), .A3(n225), .Y(N641) );
  NAND2X0_RVT U258 ( .A1(n50), .A2(n218), .Y(n225) );
  AND3X1_RVT U259 ( .A1(n229), .A2(n323), .A3(n10), .Y(N640) );
  AND3X1_RVT U260 ( .A1(n230), .A2(n323), .A3(n231), .Y(N639) );
  NAND2X0_RVT U261 ( .A1(n8), .A2(n215), .Y(n231) );
  AND3X1_RVT U262 ( .A1(n232), .A2(n323), .A3(n233), .Y(N638) );
  NAND2X0_RVT U263 ( .A1(n9), .A2(n215), .Y(n233) );
  AND3X1_RVT U264 ( .A1(n234), .A2(n28), .A3(n235), .Y(N637) );
  NAND2X0_RVT U265 ( .A1(n8), .A2(n38), .Y(n235) );
  AND3X1_RVT U266 ( .A1(n236), .A2(n28), .A3(n237), .Y(N636) );
  NAND2X0_RVT U267 ( .A1(n9), .A2(n38), .Y(n237) );
  AND3X1_RVT U268 ( .A1(n238), .A2(n28), .A3(n239), .Y(N635) );
  NAND2X0_RVT U269 ( .A1(n8), .A2(n46), .Y(n239) );
  AND3X1_RVT U270 ( .A1(n241), .A2(n28), .A3(n242), .Y(N634) );
  NAND2X0_RVT U271 ( .A1(n9), .A2(n46), .Y(n242) );
  AND3X1_RVT U272 ( .A1(n243), .A2(n28), .A3(n240), .Y(N633) );
  NAND2X0_RVT U273 ( .A1(n9), .A2(n50), .Y(n240) );
  AND3X1_RVT U274 ( .A1(n244), .A2(n28), .A3(n245), .Y(N632) );
  AND3X1_RVT U275 ( .A1(n246), .A2(n28), .A3(n247), .Y(N631) );
  NAND2X0_RVT U276 ( .A1(n6), .A2(n215), .Y(n247) );
  AND3X1_RVT U277 ( .A1(n248), .A2(n28), .A3(n249), .Y(N630) );
  NAND2X0_RVT U278 ( .A1(n7), .A2(n215), .Y(n249) );
  AND2X1_RVT U279 ( .A1(n38), .A2(n46), .Y(n215) );
  AND3X1_RVT U280 ( .A1(n250), .A2(n28), .A3(n251), .Y(N629) );
  NAND2X0_RVT U281 ( .A1(n6), .A2(n38), .Y(n251) );
  AND3X1_RVT U282 ( .A1(n252), .A2(n28), .A3(n253), .Y(N628) );
  NAND2X0_RVT U283 ( .A1(n7), .A2(n38), .Y(n253) );
  NAND3X0_RVT U284 ( .A1(n254), .A2(n255), .A3(n256), .Y(n38) );
  AND3X1_RVT U285 ( .A1(n257), .A2(n258), .A3(n259), .Y(n256) );
  AO21X1_RVT U286 ( .A1(n260), .A2(n261), .A3(n64), .Y(n259) );
  AO21X1_RVT U287 ( .A1(n262), .A2(n263), .A3(n65), .Y(n255) );
  AND3X1_RVT U288 ( .A1(n264), .A2(n28), .A3(n265), .Y(N627) );
  NAND2X0_RVT U289 ( .A1(n6), .A2(n46), .Y(n265) );
  AND3X1_RVT U290 ( .A1(n267), .A2(n28), .A3(n268), .Y(N626) );
  NAND2X0_RVT U291 ( .A1(n7), .A2(n46), .Y(n268) );
  NAND3X0_RVT U292 ( .A1(n254), .A2(n269), .A3(n270), .Y(n46) );
  OA22X1_RVT U293 ( .A1(n271), .A2(n64), .A3(n272), .A4(n65), .Y(n270) );
  AND4X1_RVT U294 ( .A1(n12), .A2(n273), .A3(n274), .A4(n275), .Y(n254) );
  OR2X1_RVT U295 ( .A1(n276), .A2(n64), .Y(n274) );
  OR2X1_RVT U296 ( .A1(n277), .A2(n65), .Y(n273) );
  AND3X1_RVT U297 ( .A1(n279), .A2(n28), .A3(n266), .Y(N625) );
  NAND2X0_RVT U298 ( .A1(n7), .A2(n50), .Y(n266) );
  NAND4X0_RVT U299 ( .A1(n257), .A2(n280), .A3(n281), .A4(n282), .Y(n50) );
  NAND3X0_RVT U300 ( .A1(n285), .A2(n286), .A3(n287), .Y(n278) );
  NAND4X0_RVT U301 ( .A1(n13), .A2(n288), .A3(n276), .A4(n261), .Y(n287) );
  NAND3X0_RVT U302 ( .A1(n248), .A2(n261), .A3(n288), .Y(n276) );
  NAND4X0_RVT U303 ( .A1(n19), .A2(n289), .A3(n277), .A4(n263), .Y(n286) );
  NAND3X0_RVT U304 ( .A1(n232), .A2(n263), .A3(n289), .Y(n277) );
  NAND4X0_RVT U305 ( .A1(n290), .A2(n68), .A3(n275), .A4(n257), .Y(n285) );
  NAND3X0_RVT U306 ( .A1(n216), .A2(n257), .A3(n290), .Y(n275) );
  NAND3X0_RVT U307 ( .A1(n263), .A2(n291), .A3(n292), .Y(n284) );
  NAND2X0_RVT U308 ( .A1(n22), .A2(n243), .Y(n292) );
  NAND2X0_RVT U309 ( .A1(n289), .A2(n234), .Y(n263) );
  AND3X1_RVT U310 ( .A1(n293), .A2(n262), .A3(n272), .Y(n289) );
  NAND3X0_RVT U311 ( .A1(n293), .A2(n236), .A3(n272), .Y(n262) );
  AND2X1_RVT U312 ( .A1(n294), .A2(n291), .Y(n272) );
  NAND3X0_RVT U313 ( .A1(n238), .A2(n294), .A3(n293), .Y(n291) );
  NAND2X0_RVT U314 ( .A1(n293), .A2(n241), .Y(n294) );
  NAND3X0_RVT U315 ( .A1(n261), .A2(n295), .A3(n296), .Y(n283) );
  NAND2X0_RVT U316 ( .A1(n16), .A2(n279), .Y(n296) );
  NAND2X0_RVT U317 ( .A1(n288), .A2(n250), .Y(n261) );
  AND3X1_RVT U318 ( .A1(n298), .A2(n260), .A3(n271), .Y(n288) );
  NAND3X0_RVT U319 ( .A1(n298), .A2(n252), .A3(n271), .Y(n260) );
  AND2X1_RVT U320 ( .A1(n299), .A2(n295), .Y(n271) );
  NAND3X0_RVT U321 ( .A1(n264), .A2(n299), .A3(n298), .Y(n295) );
  NAND2X0_RVT U322 ( .A1(n298), .A2(n267), .Y(n299) );
  NAND2X0_RVT U323 ( .A1(n17), .A2(n69), .Y(n64) );
  NAND4X0_RVT U324 ( .A1(n14), .A2(n15), .A3(n298), .A4(n300), .Y(n69) );
  OR2X1_RVT U325 ( .A1(arrival_event[2]), .A2(pending_arrival[2]), .Y(n267) );
  OR2X1_RVT U326 ( .A1(arrival_event[3]), .A2(pending_arrival[3]), .Y(n264) );
  OR2X1_RVT U327 ( .A1(arrival_event[4]), .A2(pending_arrival[4]), .Y(n252) );
  OR2X1_RVT U328 ( .A1(arrival_event[5]), .A2(pending_arrival[5]), .Y(n250) );
  NOR2X0_RVT U329 ( .A1(n279), .A2(n297), .Y(n298) );
  OR2X1_RVT U330 ( .A1(arrival_event[6]), .A2(pending_arrival[6]), .Y(n248) );
  OR2X1_RVT U331 ( .A1(arrival_event[7]), .A2(pending_arrival[7]), .Y(n246) );
  NAND2X0_RVT U332 ( .A1(n18), .A2(n23), .Y(n59) );
  NAND2X0_RVT U333 ( .A1(n26), .A2(n228), .Y(n281) );
  NAND2X0_RVT U334 ( .A1(n290), .A2(n219), .Y(n257) );
  AND3X1_RVT U335 ( .A1(n301), .A2(n258), .A3(n269), .Y(n290) );
  NAND3X0_RVT U336 ( .A1(n301), .A2(n221), .A3(n269), .Y(n258) );
  AND2X1_RVT U337 ( .A1(n302), .A2(n280), .Y(n269) );
  NAND3X0_RVT U338 ( .A1(n223), .A2(n302), .A3(n301), .Y(n280) );
  NAND2X0_RVT U339 ( .A1(n301), .A2(n226), .Y(n302) );
  OR2X1_RVT U340 ( .A1(arrival_event[1]), .A2(pending_arrival[1]), .Y(n279) );
  AND3X1_RVT U341 ( .A1(n297), .A2(n323), .A3(n303), .Y(N624) );
  NAND2X0_RVT U342 ( .A1(n9), .A2(n65), .Y(n303) );
  NAND2X0_RVT U343 ( .A1(n23), .A2(n304), .Y(n65) );
  NAND2X0_RVT U344 ( .A1(n23), .A2(n218), .Y(n245) );
  NAND3X0_RVT U345 ( .A1(n57), .A2(n32), .A3(n62), .Y(n218) );
  AND2X1_RVT U346 ( .A1(n324), .A2(n58), .Y(n62) );
  AO21X1_RVT U347 ( .A1(current_type[0]), .A2(current_type[1]), .A3(n23), .Y(
        n58) );
  OR2X1_RVT U348 ( .A1(n18), .A2(current_type[1]), .Y(n57) );
  NAND4X0_RVT U349 ( .A1(n21), .A2(n20), .A3(n293), .A4(n305), .Y(n304) );
  OR2X1_RVT U350 ( .A1(pending_service[7]), .A2(service_irq[7]), .Y(n230) );
  OR2X1_RVT U351 ( .A1(pending_service[6]), .A2(service_irq[6]), .Y(n232) );
  OR2X1_RVT U352 ( .A1(pending_service[5]), .A2(service_irq[5]), .Y(n234) );
  OR2X1_RVT U353 ( .A1(pending_service[4]), .A2(service_irq[4]), .Y(n236) );
  NOR2X0_RVT U354 ( .A1(n244), .A2(n243), .Y(n293) );
  OR2X1_RVT U355 ( .A1(pending_service[1]), .A2(service_irq[1]), .Y(n243) );
  OR2X1_RVT U356 ( .A1(pending_service[0]), .A2(service_irq[0]), .Y(n244) );
  OR2X1_RVT U357 ( .A1(pending_service[3]), .A2(service_irq[3]), .Y(n238) );
  OR2X1_RVT U358 ( .A1(pending_service[2]), .A2(service_irq[2]), .Y(n241) );
  NAND4X0_RVT U359 ( .A1(n25), .A2(n24), .A3(n301), .A4(n306), .Y(n68) );
  OR2X1_RVT U360 ( .A1(emergency_irq[7]), .A2(pending_emergency[7]), .Y(n213)
         );
  OR2X1_RVT U361 ( .A1(emergency_irq[6]), .A2(pending_emergency[6]), .Y(n216)
         );
  OR2X1_RVT U362 ( .A1(emergency_irq[5]), .A2(pending_emergency[5]), .Y(n219)
         );
  OR2X1_RVT U363 ( .A1(emergency_irq[4]), .A2(pending_emergency[4]), .Y(n221)
         );
  NOR2X0_RVT U364 ( .A1(n229), .A2(n228), .Y(n301) );
  OR2X1_RVT U365 ( .A1(emergency_irq[1]), .A2(pending_emergency[1]), .Y(n228)
         );
  OR2X1_RVT U366 ( .A1(emergency_irq[0]), .A2(pending_emergency[0]), .Y(n229)
         );
  OR2X1_RVT U367 ( .A1(emergency_irq[3]), .A2(pending_emergency[3]), .Y(n223)
         );
  OR2X1_RVT U368 ( .A1(emergency_irq[2]), .A2(pending_emergency[2]), .Y(n226)
         );
  OR2X1_RVT U369 ( .A1(arrival_event[0]), .A2(pending_arrival[0]), .Y(n297) );
  INVX1_RVT U370 ( .A(n303), .Y(n7) );
  INVX1_RVT U371 ( .A(n240), .Y(n8) );
  INVX1_RVT U372 ( .A(n266), .Y(n6) );
  INVX1_RVT U373 ( .A(n225), .Y(n11) );
  INVX1_RVT U374 ( .A(n64), .Y(n13) );
  INVX1_RVT U375 ( .A(n65), .Y(n19) );
  INVX1_RVT U376 ( .A(n245), .Y(n9) );
  INVX1_RVT U377 ( .A(n278), .Y(n12) );
  INVX1_RVT U378 ( .A(n59), .Y(n17) );
  INVX1_RVT U379 ( .A(n68), .Y(n23) );
  INVX1_RVT U380 ( .A(n304), .Y(n18) );
  INVX1_RVT U381 ( .A(n218), .Y(n10) );
  AOI221X1_RVT U382 ( .A1(n13), .A2(n283), .A3(n19), .A4(n284), .A5(n278), .Y(
        n282) );
  INVX1_RVT U383 ( .A(n229), .Y(n26) );
  INVX1_RVT U384 ( .A(n226), .Y(n25) );
  INVX1_RVT U385 ( .A(n223), .Y(n24) );
  INVX1_RVT U386 ( .A(n241), .Y(n21) );
  INVX1_RVT U387 ( .A(n238), .Y(n20) );
  INVX1_RVT U388 ( .A(n297), .Y(n16) );
  INVX1_RVT U389 ( .A(n244), .Y(n22) );
  INVX1_RVT U390 ( .A(n246), .Y(n14) );
  INVX1_RVT U391 ( .A(n248), .Y(n15) );
  INVX1_RVT U392 ( .A(n70), .Y(n5) );
  NBUFFX2_RVT U393 ( .A(n81), .Y(n316) );
  NBUFFX2_RVT U394 ( .A(n75), .Y(n321) );
  NBUFFX2_RVT U395 ( .A(n75), .Y(n322) );
  NBUFFX2_RVT U396 ( .A(n326), .Y(n324) );
  NBUFFX2_RVT U397 ( .A(n326), .Y(display_busy) );
  NBUFFX2_RVT U398 ( .A(n28), .Y(n323) );
  OR4X1_RVT U399 ( .A1(route_available[1]), .A2(route_available[0]), .A3(n55), 
        .A4(n72), .Y(n71) );
  OR4X1_RVT U400 ( .A1(route_available[4]), .A2(route_available[5]), .A3(
        route_available[6]), .A4(route_available[7]), .Y(n72) );
  INVX1_RVT U401 ( .A(n55), .Y(n29) );
  INVX1_RVT U402 ( .A(route_available[2]), .Y(n30) );
  INVX1_RVT U403 ( .A(route_available[1]), .Y(n31) );
  INVX1_RVT U404 ( .A(display_expire), .Y(n32) );
  NBUFFX2_RVT U405 ( .A(n83), .Y(n315) );
  NBUFFX2_RVT U406 ( .A(n78), .Y(n319) );
  NBUFFX2_RVT U407 ( .A(n84), .Y(n314) );
  NBUFFX2_RVT U408 ( .A(n79), .Y(n318) );
  NBUFFX2_RVT U409 ( .A(n76), .Y(n320) );
  NBUFFX2_RVT U410 ( .A(n80), .Y(n317) );
  NBUFFX2_RVT U411 ( .A(n327), .Y(n326) );
  INVX1_RVT U412 ( .A(rst), .Y(n28) );
endmodule

