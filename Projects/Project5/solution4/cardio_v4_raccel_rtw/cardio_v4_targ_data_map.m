  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 1;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtP)
    ;%
      section.nData     = 233;
      section.data(233)  = dumData; %prealloc
      
	  ;% rtP.Integrator_IC
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.Constant_Value
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtP.T0_Value
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtP.Integrator_IC_j
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtP.Integrator1_IC
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtP.n_Value
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtP.m_Value
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtP.alpha_Value
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtP.Emaxlv0_Value
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtP.Integrator1_IC_h
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtP.Integrator_IC_h
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtP.Vulv_Value
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtP.Constant_Value_e
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtP.Polv_Value
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtP.kElv_Value
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtP.Constant1_Value
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtP.Gain_Gain
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 16;
	
	  ;% rtP.kRlv_Value
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 17;
	
	  ;% rtP.Switch_Threshold
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 18;
	
	  ;% rtP.fesmax_Value
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 19;
	
	  ;% rtP.fesinf_Value
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 20;
	
	  ;% rtP.fes0_Value
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 21;
	
	  ;% rtP.kes_Value
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 22;
	
	  ;% rtP.fabmin_Value
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 23;
	
	  ;% rtP.Pn_Value
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 24;
	
	  ;% rtP.Integrator_IC_n
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 25;
	
	  ;% rtP.kab_Value
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 26;
	
	  ;% rtP.fabmax_Gain
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 27;
	
	  ;% rtP.Constant_Value_g
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 28;
	
	  ;% rtP.Wbsp_Gain
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 29;
	
	  ;% rtP.fac1_IC
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 30;
	
	  ;% rtP.Wcsp_Gain
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 31;
	
	  ;% rtP.Integrator_IC_ne
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 32;
	
	  ;% rtP.Wpsp_Gain
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 33;
	
	  ;% rtP.thetasp_Value
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 34;
	
	  ;% rtP.Rsp0_Value
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 35;
	
	  ;% rtP.Integrator_IC_k
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 36;
	
	  ;% rtP.Rmp0_Value
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 37;
	
	  ;% rtP.Integrator1_IC_c
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 38;
	
	  ;% rtP.Rep0_Value
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 39;
	
	  ;% rtP.Integrator2_IC
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 40;
	
	  ;% rtP.Emaxrv0_Value
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 41;
	
	  ;% rtP.Integrator_IC_hq
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 42;
	
	  ;% rtP.Vumv0_Value
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 43;
	
	  ;% rtP.Integrator_IC_kb
	  section.data(45).logicalSrcIdx = 44;
	  section.data(45).dtTransOffset = 44;
	
	  ;% rtP.Vusv0_Value
	  section.data(46).logicalSrcIdx = 45;
	  section.data(46).dtTransOffset = 45;
	
	  ;% rtP.Integrator1_IC_cm
	  section.data(47).logicalSrcIdx = 46;
	  section.data(47).dtTransOffset = 46;
	
	  ;% rtP.Vuev0_Value
	  section.data(48).logicalSrcIdx = 47;
	  section.data(48).dtTransOffset = 47;
	
	  ;% rtP.Integrator2_IC_o
	  section.data(49).logicalSrcIdx = 48;
	  section.data(49).dtTransOffset = 48;
	
	  ;% rtP.Constant_Value_n
	  section.data(50).logicalSrcIdx = 49;
	  section.data(50).dtTransOffset = 49;
	
	  ;% rtP.Cev_Value
	  section.data(51).logicalSrcIdx = 50;
	  section.data(51).dtTransOffset = 50;
	
	  ;% rtP.Vtot_Value
	  section.data(52).logicalSrcIdx = 51;
	  section.data(52).dtTransOffset = 51;
	
	  ;% rtP.Csa_Value
	  section.data(53).logicalSrcIdx = 52;
	  section.data(53).dtTransOffset = 52;
	
	  ;% rtP.Integrator_IC_hl
	  section.data(54).logicalSrcIdx = 53;
	  section.data(54).dtTransOffset = 53;
	
	  ;% rtP.Chp_Value
	  section.data(55).logicalSrcIdx = 54;
	  section.data(55).dtTransOffset = 54;
	
	  ;% rtP.Cbp_Value
	  section.data(56).logicalSrcIdx = 55;
	  section.data(56).dtTransOffset = 55;
	
	  ;% rtP.Cmp_Value
	  section.data(57).logicalSrcIdx = 56;
	  section.data(57).dtTransOffset = 56;
	
	  ;% rtP.Csp_Value
	  section.data(58).logicalSrcIdx = 57;
	  section.data(58).dtTransOffset = 57;
	
	  ;% rtP.Cep_Value
	  section.data(59).logicalSrcIdx = 58;
	  section.data(59).dtTransOffset = 58;
	
	  ;% rtP.Integrator_IC_d
	  section.data(60).logicalSrcIdx = 59;
	  section.data(60).dtTransOffset = 59;
	
	  ;% rtP.Cbv_Value
	  section.data(61).logicalSrcIdx = 60;
	  section.data(61).dtTransOffset = 60;
	
	  ;% rtP.Integrator_IC_jk
	  section.data(62).logicalSrcIdx = 61;
	  section.data(62).dtTransOffset = 61;
	
	  ;% rtP.Chv_Value
	  section.data(63).logicalSrcIdx = 62;
	  section.data(63).dtTransOffset = 62;
	
	  ;% rtP.Integrator_IC_h4
	  section.data(64).logicalSrcIdx = 63;
	  section.data(64).dtTransOffset = 63;
	
	  ;% rtP.Cmv_Value
	  section.data(65).logicalSrcIdx = 64;
	  section.data(65).dtTransOffset = 64;
	
	  ;% rtP.Integrator_IC_ho
	  section.data(66).logicalSrcIdx = 65;
	  section.data(66).dtTransOffset = 65;
	
	  ;% rtP.Csv_Value
	  section.data(67).logicalSrcIdx = 66;
	  section.data(67).dtTransOffset = 66;
	
	  ;% rtP.Integrator_IC_o
	  section.data(68).logicalSrcIdx = 67;
	  section.data(68).dtTransOffset = 67;
	
	  ;% rtP.Cra_Value
	  section.data(69).logicalSrcIdx = 68;
	  section.data(69).dtTransOffset = 68;
	
	  ;% rtP.Integrator_IC_h1
	  section.data(70).logicalSrcIdx = 69;
	  section.data(70).dtTransOffset = 69;
	
	  ;% rtP.Cpa_Value
	  section.data(71).logicalSrcIdx = 70;
	  section.data(71).dtTransOffset = 70;
	
	  ;% rtP.Integrator_IC_a
	  section.data(72).logicalSrcIdx = 71;
	  section.data(72).dtTransOffset = 71;
	
	  ;% rtP.Cpp_Value
	  section.data(73).logicalSrcIdx = 72;
	  section.data(73).dtTransOffset = 72;
	
	  ;% rtP.Integrator_IC_m
	  section.data(74).logicalSrcIdx = 73;
	  section.data(74).dtTransOffset = 73;
	
	  ;% rtP.Cpv_Value
	  section.data(75).logicalSrcIdx = 74;
	  section.data(75).dtTransOffset = 74;
	
	  ;% rtP.Integrator_IC_av
	  section.data(76).logicalSrcIdx = 75;
	  section.data(76).dtTransOffset = 75;
	
	  ;% rtP.Cla_Value
	  section.data(77).logicalSrcIdx = 76;
	  section.data(77).dtTransOffset = 76;
	
	  ;% rtP.Integrator_IC_jj
	  section.data(78).logicalSrcIdx = 77;
	  section.data(78).dtTransOffset = 77;
	
	  ;% rtP.Vusa_Value
	  section.data(79).logicalSrcIdx = 78;
	  section.data(79).dtTransOffset = 78;
	
	  ;% rtP.Vuhp_Value
	  section.data(80).logicalSrcIdx = 79;
	  section.data(80).dtTransOffset = 79;
	
	  ;% rtP.Vump_Value
	  section.data(81).logicalSrcIdx = 80;
	  section.data(81).dtTransOffset = 80;
	
	  ;% rtP.Vusp_Value
	  section.data(82).logicalSrcIdx = 81;
	  section.data(82).dtTransOffset = 81;
	
	  ;% rtP.Vuep_Value
	  section.data(83).logicalSrcIdx = 82;
	  section.data(83).dtTransOffset = 82;
	
	  ;% rtP.Vuhv_Value
	  section.data(84).logicalSrcIdx = 83;
	  section.data(84).dtTransOffset = 83;
	
	  ;% rtP.Vubv_Value
	  section.data(85).logicalSrcIdx = 84;
	  section.data(85).dtTransOffset = 84;
	
	  ;% rtP.Vura_Value
	  section.data(86).logicalSrcIdx = 85;
	  section.data(86).dtTransOffset = 85;
	
	  ;% rtP.Vupa_Value
	  section.data(87).logicalSrcIdx = 86;
	  section.data(87).dtTransOffset = 86;
	
	  ;% rtP.Vupp_Value
	  section.data(88).logicalSrcIdx = 87;
	  section.data(88).dtTransOffset = 87;
	
	  ;% rtP.Vupv_Value
	  section.data(89).logicalSrcIdx = 88;
	  section.data(89).dtTransOffset = 88;
	
	  ;% rtP.Vula_Value
	  section.data(90).logicalSrcIdx = 89;
	  section.data(90).dtTransOffset = 89;
	
	  ;% rtP.Vubp_Value
	  section.data(91).logicalSrcIdx = 90;
	  section.data(91).dtTransOffset = 90;
	
	  ;% rtP.fev0_Value
	  section.data(92).logicalSrcIdx = 91;
	  section.data(92).dtTransOffset = 91;
	
	  ;% rtP.fab0_Value
	  section.data(93).logicalSrcIdx = 92;
	  section.data(93).dtTransOffset = 92;
	
	  ;% rtP.kev_Value
	  section.data(94).logicalSrcIdx = 93;
	  section.data(94).dtTransOffset = 93;
	
	  ;% rtP.fevinf_Gain
	  section.data(95).logicalSrcIdx = 94;
	  section.data(95).dtTransOffset = 94;
	
	  ;% rtP._Value
	  section.data(96).logicalSrcIdx = 95;
	  section.data(96).dtTransOffset = 95;
	
	  ;% rtP.Wcv_Gain
	  section.data(97).logicalSrcIdx = 96;
	  section.data(97).dtTransOffset = 96;
	
	  ;% rtP.Gain_Gain_a
	  section.data(98).logicalSrcIdx = 97;
	  section.data(98).dtTransOffset = 97;
	
	  ;% rtP.thetav_Value
	  section.data(99).logicalSrcIdx = 98;
	  section.data(99).dtTransOffset = 98;
	
	  ;% rtP.fesmax1_Value
	  section.data(100).logicalSrcIdx = 99;
	  section.data(100).dtTransOffset = 99;
	
	  ;% rtP.fesinf1_Value
	  section.data(101).logicalSrcIdx = 100;
	  section.data(101).dtTransOffset = 100;
	
	  ;% rtP.fes1_Value
	  section.data(102).logicalSrcIdx = 101;
	  section.data(102).dtTransOffset = 101;
	
	  ;% rtP.kes1_Value
	  section.data(103).logicalSrcIdx = 102;
	  section.data(103).dtTransOffset = 102;
	
	  ;% rtP.Wbsh_Gain
	  section.data(104).logicalSrcIdx = 103;
	  section.data(104).dtTransOffset = 103;
	
	  ;% rtP.Wcsh_Gain
	  section.data(105).logicalSrcIdx = 104;
	  section.data(105).dtTransOffset = 104;
	
	  ;% rtP.thetash_Value
	  section.data(106).logicalSrcIdx = 105;
	  section.data(106).dtTransOffset = 105;
	
	  ;% rtP.Vurv_Value
	  section.data(107).logicalSrcIdx = 106;
	  section.data(107).dtTransOffset = 106;
	
	  ;% rtP.Constant_Value_o
	  section.data(108).logicalSrcIdx = 107;
	  section.data(108).dtTransOffset = 107;
	
	  ;% rtP.Porv_Value
	  section.data(109).logicalSrcIdx = 108;
	  section.data(109).dtTransOffset = 108;
	
	  ;% rtP.kErv_Value
	  section.data(110).logicalSrcIdx = 109;
	  section.data(110).dtTransOffset = 109;
	
	  ;% rtP.Constant1_Value_c
	  section.data(111).logicalSrcIdx = 110;
	  section.data(111).dtTransOffset = 110;
	
	  ;% rtP.kRrv_Value
	  section.data(112).logicalSrcIdx = 111;
	  section.data(112).dtTransOffset = 111;
	
	  ;% rtP.Constant_Value_nb
	  section.data(113).logicalSrcIdx = 112;
	  section.data(113).dtTransOffset = 112;
	
	  ;% rtP.Switch_Threshold_j
	  section.data(114).logicalSrcIdx = 113;
	  section.data(114).dtTransOffset = 113;
	
	  ;% rtP.Gap_Value
	  section.data(115).logicalSrcIdx = 114;
	  section.data(115).dtTransOffset = 114;
	
	  ;% rtP.VT_Value
	  section.data(116).logicalSrcIdx = 115;
	  section.data(116).dtTransOffset = 115;
	
	  ;% rtP.taup_Gain
	  section.data(117).logicalSrcIdx = 116;
	  section.data(117).dtTransOffset = 116;
	
	  ;% rtP._Value_c
	  section.data(118).logicalSrcIdx = 117;
	  section.data(118).dtTransOffset = 117;
	
	  ;% rtP.fesmin_Value
	  section.data(119).logicalSrcIdx = 118;
	  section.data(119).dtTransOffset = 118;
	
	  ;% rtP.Constant_Value_l
	  section.data(120).logicalSrcIdx = 119;
	  section.data(120).dtTransOffset = 119;
	
	  ;% rtP.Switch_Threshold_p
	  section.data(121).logicalSrcIdx = 120;
	  section.data(121).dtTransOffset = 120;
	
	  ;% rtP.GTs_Gain
	  section.data(122).logicalSrcIdx = 121;
	  section.data(122).dtTransOffset = 121;
	
	  ;% rtP.tauTs_Gain
	  section.data(123).logicalSrcIdx = 122;
	  section.data(123).dtTransOffset = 122;
	
	  ;% rtP.GTv_Gain
	  section.data(124).logicalSrcIdx = 123;
	  section.data(124).dtTransOffset = 123;
	
	  ;% rtP.tauTv_Gain
	  section.data(125).logicalSrcIdx = 124;
	  section.data(125).dtTransOffset = 124;
	
	  ;% rtP._Value_n
	  section.data(126).logicalSrcIdx = 125;
	  section.data(126).dtTransOffset = 125;
	
	  ;% rtP.fesmin_Value_a
	  section.data(127).logicalSrcIdx = 126;
	  section.data(127).dtTransOffset = 126;
	
	  ;% rtP.Switch2_Threshold
	  section.data(128).logicalSrcIdx = 127;
	  section.data(128).dtTransOffset = 127;
	
	  ;% rtP.GVuev_Gain
	  section.data(129).logicalSrcIdx = 128;
	  section.data(129).dtTransOffset = 128;
	
	  ;% rtP.tauVuev_Gain
	  section.data(130).logicalSrcIdx = 129;
	  section.data(130).dtTransOffset = 129;
	
	  ;% rtP.Switch_Threshold_k
	  section.data(131).logicalSrcIdx = 130;
	  section.data(131).dtTransOffset = 130;
	
	  ;% rtP.GVumv_Gain
	  section.data(132).logicalSrcIdx = 131;
	  section.data(132).dtTransOffset = 131;
	
	  ;% rtP.tauVumv_Gain
	  section.data(133).logicalSrcIdx = 132;
	  section.data(133).dtTransOffset = 132;
	
	  ;% rtP.Switch1_Threshold
	  section.data(134).logicalSrcIdx = 133;
	  section.data(134).dtTransOffset = 133;
	
	  ;% rtP.GVusv_Gain
	  section.data(135).logicalSrcIdx = 134;
	  section.data(135).dtTransOffset = 134;
	
	  ;% rtP.tauVusv_Gain
	  section.data(136).logicalSrcIdx = 135;
	  section.data(136).dtTransOffset = 135;
	
	  ;% rtP.Integrator_IC_nk
	  section.data(137).logicalSrcIdx = 136;
	  section.data(137).dtTransOffset = 136;
	
	  ;% rtP.Constant_Value_go
	  section.data(138).logicalSrcIdx = 137;
	  section.data(138).dtTransOffset = 137;
	
	  ;% rtP.Cpa_Value_m
	  section.data(139).logicalSrcIdx = 138;
	  section.data(139).dtTransOffset = 138;
	
	  ;% rtP.Rmv_Value
	  section.data(140).logicalSrcIdx = 139;
	  section.data(140).dtTransOffset = 139;
	
	  ;% rtP.Cmv_Value_k
	  section.data(141).logicalSrcIdx = 140;
	  section.data(141).dtTransOffset = 140;
	
	  ;% rtP.Constant_Value_nn
	  section.data(142).logicalSrcIdx = 141;
	  section.data(142).dtTransOffset = 141;
	
	  ;% rtP.Rsv_Value
	  section.data(143).logicalSrcIdx = 142;
	  section.data(143).dtTransOffset = 142;
	
	  ;% rtP.Constant_Value_p
	  section.data(144).logicalSrcIdx = 143;
	  section.data(144).dtTransOffset = 143;
	
	  ;% rtP.Csv_Value_b
	  section.data(145).logicalSrcIdx = 144;
	  section.data(145).dtTransOffset = 144;
	
	  ;% rtP.Rpv_Value
	  section.data(146).logicalSrcIdx = 145;
	  section.data(146).dtTransOffset = 145;
	
	  ;% rtP.Constant_Value_m
	  section.data(147).logicalSrcIdx = 146;
	  section.data(147).dtTransOffset = 146;
	
	  ;% rtP.Gain_Gain_i
	  section.data(148).logicalSrcIdx = 147;
	  section.data(148).dtTransOffset = 147;
	
	  ;% rtP.Rla_Value
	  section.data(149).logicalSrcIdx = 148;
	  section.data(149).dtTransOffset = 148;
	
	  ;% rtP.Switch_Threshold_m
	  section.data(150).logicalSrcIdx = 149;
	  section.data(150).dtTransOffset = 149;
	
	  ;% rtP.Cla_Value_c
	  section.data(151).logicalSrcIdx = 150;
	  section.data(151).dtTransOffset = 150;
	
	  ;% rtP.Constant_Value_ey
	  section.data(152).logicalSrcIdx = 151;
	  section.data(152).dtTransOffset = 151;
	
	  ;% rtP.Rpa_Value
	  section.data(153).logicalSrcIdx = 152;
	  section.data(153).dtTransOffset = 152;
	
	  ;% rtP.Constant_Value_f
	  section.data(154).logicalSrcIdx = 153;
	  section.data(154).dtTransOffset = 153;
	
	  ;% rtP.Lpa_Value
	  section.data(155).logicalSrcIdx = 154;
	  section.data(155).dtTransOffset = 154;
	
	  ;% rtP.Rpp_Value
	  section.data(156).logicalSrcIdx = 155;
	  section.data(156).dtTransOffset = 155;
	
	  ;% rtP.Constant_Value_c
	  section.data(157).logicalSrcIdx = 156;
	  section.data(157).dtTransOffset = 156;
	
	  ;% rtP.Cpp_Value_o
	  section.data(158).logicalSrcIdx = 157;
	  section.data(158).dtTransOffset = 157;
	
	  ;% rtP.Rpp_Value_i
	  section.data(159).logicalSrcIdx = 158;
	  section.data(159).dtTransOffset = 158;
	
	  ;% rtP.Rpv_Value_b
	  section.data(160).logicalSrcIdx = 159;
	  section.data(160).dtTransOffset = 159;
	
	  ;% rtP.Constant_Value_pe
	  section.data(161).logicalSrcIdx = 160;
	  section.data(161).dtTransOffset = 160;
	
	  ;% rtP.Cpv_Value_i
	  section.data(162).logicalSrcIdx = 161;
	  section.data(162).dtTransOffset = 161;
	
	  ;% rtP.Constant_Value_b
	  section.data(163).logicalSrcIdx = 162;
	  section.data(163).dtTransOffset = 162;
	
	  ;% rtP.Csa_Value_n
	  section.data(164).logicalSrcIdx = 163;
	  section.data(164).dtTransOffset = 163;
	
	  ;% rtP.Integrator_IC_mh
	  section.data(165).logicalSrcIdx = 164;
	  section.data(165).dtTransOffset = 164;
	
	  ;% rtP.Rsa_Value
	  section.data(166).logicalSrcIdx = 165;
	  section.data(166).dtTransOffset = 165;
	
	  ;% rtP.Constant_Value_on
	  section.data(167).logicalSrcIdx = 166;
	  section.data(167).dtTransOffset = 166;
	
	  ;% rtP.Lsa_Value
	  section.data(168).logicalSrcIdx = 167;
	  section.data(168).dtTransOffset = 167;
	
	  ;% rtP.Chp_Value_e
	  section.data(169).logicalSrcIdx = 168;
	  section.data(169).dtTransOffset = 168;
	
	  ;% rtP.Cbp_Value_g
	  section.data(170).logicalSrcIdx = 169;
	  section.data(170).dtTransOffset = 169;
	
	  ;% rtP.Cmp_Value_k
	  section.data(171).logicalSrcIdx = 170;
	  section.data(171).dtTransOffset = 170;
	
	  ;% rtP.Csp_Value_o
	  section.data(172).logicalSrcIdx = 171;
	  section.data(172).dtTransOffset = 171;
	
	  ;% rtP.Cep_Value_o
	  section.data(173).logicalSrcIdx = 172;
	  section.data(173).dtTransOffset = 172;
	
	  ;% rtP.Rhp_Value
	  section.data(174).logicalSrcIdx = 173;
	  section.data(174).dtTransOffset = 173;
	
	  ;% rtP.Rbp_Value
	  section.data(175).logicalSrcIdx = 174;
	  section.data(175).dtTransOffset = 174;
	
	  ;% rtP.Constant_Value_bo
	  section.data(176).logicalSrcIdx = 175;
	  section.data(176).dtTransOffset = 175;
	
	  ;% rtP.Rhp_Value_i
	  section.data(177).logicalSrcIdx = 176;
	  section.data(177).dtTransOffset = 176;
	
	  ;% rtP.Rhv_Value
	  section.data(178).logicalSrcIdx = 177;
	  section.data(178).dtTransOffset = 177;
	
	  ;% rtP.Chv_Value_i
	  section.data(179).logicalSrcIdx = 178;
	  section.data(179).dtTransOffset = 178;
	
	  ;% rtP.Constant_Value_ev
	  section.data(180).logicalSrcIdx = 179;
	  section.data(180).dtTransOffset = 179;
	
	  ;% rtP.Rhp_Value_a
	  section.data(181).logicalSrcIdx = 180;
	  section.data(181).dtTransOffset = 180;
	
	  ;% rtP.Rbv_Value
	  section.data(182).logicalSrcIdx = 181;
	  section.data(182).dtTransOffset = 181;
	
	  ;% rtP.Cbv_Value_g
	  section.data(183).logicalSrcIdx = 182;
	  section.data(183).dtTransOffset = 182;
	
	  ;% rtP.Constant_Value_lt
	  section.data(184).logicalSrcIdx = 183;
	  section.data(184).dtTransOffset = 183;
	
	  ;% rtP.Rhv_Value_c
	  section.data(185).logicalSrcIdx = 184;
	  section.data(185).dtTransOffset = 184;
	
	  ;% rtP.Rbv_Value_m
	  section.data(186).logicalSrcIdx = 185;
	  section.data(186).dtTransOffset = 185;
	
	  ;% rtP.Rmv_Value_p
	  section.data(187).logicalSrcIdx = 186;
	  section.data(187).dtTransOffset = 186;
	
	  ;% rtP.Rsv_Value_h
	  section.data(188).logicalSrcIdx = 187;
	  section.data(188).dtTransOffset = 187;
	
	  ;% rtP.Rev_Value
	  section.data(189).logicalSrcIdx = 188;
	  section.data(189).dtTransOffset = 188;
	
	  ;% rtP.Rra_Value
	  section.data(190).logicalSrcIdx = 189;
	  section.data(190).dtTransOffset = 189;
	
	  ;% rtP.Constant_Value_ms
	  section.data(191).logicalSrcIdx = 190;
	  section.data(191).dtTransOffset = 190;
	
	  ;% rtP.Switch_Threshold_l
	  section.data(192).logicalSrcIdx = 191;
	  section.data(192).dtTransOffset = 191;
	
	  ;% rtP.Constant_Value_k
	  section.data(193).logicalSrcIdx = 192;
	  section.data(193).dtTransOffset = 192;
	
	  ;% rtP.Cra_Value_f
	  section.data(194).logicalSrcIdx = 193;
	  section.data(194).dtTransOffset = 193;
	
	  ;% rtP.tauzb_Gain
	  section.data(195).logicalSrcIdx = 194;
	  section.data(195).dtTransOffset = 194;
	
	  ;% rtP.taupb_Value
	  section.data(196).logicalSrcIdx = 195;
	  section.data(196).dtTransOffset = 195;
	
	  ;% rtP._Value_l
	  section.data(197).logicalSrcIdx = 196;
	  section.data(197).dtTransOffset = 196;
	
	  ;% rtP.facmax_Value
	  section.data(198).logicalSrcIdx = 197;
	  section.data(198).dtTransOffset = 197;
	
	  ;% rtP.PasO2_Value
	  section.data(199).logicalSrcIdx = 198;
	  section.data(199).dtTransOffset = 198;
	
	  ;% rtP.PasO2n_Value
	  section.data(200).logicalSrcIdx = 199;
	  section.data(200).dtTransOffset = 199;
	
	  ;% rtP.kac_Value
	  section.data(201).logicalSrcIdx = 200;
	  section.data(201).dtTransOffset = 200;
	
	  ;% rtP.facmin_Gain
	  section.data(202).logicalSrcIdx = 201;
	  section.data(202).dtTransOffset = 201;
	
	  ;% rtP.tauc_Gain
	  section.data(203).logicalSrcIdx = 202;
	  section.data(203).dtTransOffset = 202;
	
	  ;% rtP.c_Value
	  section.data(204).logicalSrcIdx = 203;
	  section.data(204).dtTransOffset = 203;
	
	  ;% rtP.fesmin2_Value
	  section.data(205).logicalSrcIdx = 204;
	  section.data(205).dtTransOffset = 204;
	
	  ;% rtP.Constant2_Value
	  section.data(206).logicalSrcIdx = 205;
	  section.data(206).dtTransOffset = 205;
	
	  ;% rtP.Switch2_Threshold_p
	  section.data(207).logicalSrcIdx = 206;
	  section.data(207).dtTransOffset = 206;
	
	  ;% rtP.GRep_Gain
	  section.data(208).logicalSrcIdx = 207;
	  section.data(208).dtTransOffset = 207;
	
	  ;% rtP.tauRep_Gain
	  section.data(209).logicalSrcIdx = 208;
	  section.data(209).dtTransOffset = 208;
	
	  ;% rtP.b_Value
	  section.data(210).logicalSrcIdx = 209;
	  section.data(210).dtTransOffset = 209;
	
	  ;% rtP.fesmin1_Value
	  section.data(211).logicalSrcIdx = 210;
	  section.data(211).dtTransOffset = 210;
	
	  ;% rtP.Constant1_Value_p
	  section.data(212).logicalSrcIdx = 211;
	  section.data(212).dtTransOffset = 211;
	
	  ;% rtP.Switch1_Threshold_e
	  section.data(213).logicalSrcIdx = 212;
	  section.data(213).dtTransOffset = 212;
	
	  ;% rtP.GRmp_Gain
	  section.data(214).logicalSrcIdx = 213;
	  section.data(214).dtTransOffset = 213;
	
	  ;% rtP.tauRmp_Gain
	  section.data(215).logicalSrcIdx = 214;
	  section.data(215).dtTransOffset = 214;
	
	  ;% rtP.a_Value
	  section.data(216).logicalSrcIdx = 215;
	  section.data(216).dtTransOffset = 215;
	
	  ;% rtP.fesmin_Value_d
	  section.data(217).logicalSrcIdx = 216;
	  section.data(217).dtTransOffset = 216;
	
	  ;% rtP.Constant_Value_ch
	  section.data(218).logicalSrcIdx = 217;
	  section.data(218).dtTransOffset = 217;
	
	  ;% rtP.Switch_Threshold_a
	  section.data(219).logicalSrcIdx = 218;
	  section.data(219).dtTransOffset = 218;
	
	  ;% rtP.GRsp_Gain
	  section.data(220).logicalSrcIdx = 219;
	  section.data(220).dtTransOffset = 219;
	
	  ;% rtP.tauRsp_Gain
	  section.data(221).logicalSrcIdx = 220;
	  section.data(221).dtTransOffset = 220;
	
	  ;% rtP.a_Value_e
	  section.data(222).logicalSrcIdx = 221;
	  section.data(222).dtTransOffset = 221;
	
	  ;% rtP.fesmin_Value_n
	  section.data(223).logicalSrcIdx = 222;
	  section.data(223).dtTransOffset = 222;
	
	  ;% rtP.Constant_Value_ei
	  section.data(224).logicalSrcIdx = 223;
	  section.data(224).dtTransOffset = 223;
	
	  ;% rtP.Switch_Threshold_n
	  section.data(225).logicalSrcIdx = 224;
	  section.data(225).dtTransOffset = 224;
	
	  ;% rtP.GEmaxrv_Gain
	  section.data(226).logicalSrcIdx = 225;
	  section.data(226).dtTransOffset = 225;
	
	  ;% rtP.a1_Value
	  section.data(227).logicalSrcIdx = 226;
	  section.data(227).dtTransOffset = 226;
	
	  ;% rtP.fesmin1_Value_d
	  section.data(228).logicalSrcIdx = 227;
	  section.data(228).dtTransOffset = 227;
	
	  ;% rtP.Constant1_Value_l
	  section.data(229).logicalSrcIdx = 228;
	  section.data(229).dtTransOffset = 228;
	
	  ;% rtP.Switch1_Threshold_f
	  section.data(230).logicalSrcIdx = 229;
	  section.data(230).dtTransOffset = 229;
	
	  ;% rtP.GEmaxlv_Gain
	  section.data(231).logicalSrcIdx = 230;
	  section.data(231).dtTransOffset = 230;
	
	  ;% rtP.tauEmaxlv_Gain
	  section.data(232).logicalSrcIdx = 231;
	  section.data(232).dtTransOffset = 231;
	
	  ;% rtP.tauEmaxrv_Gain
	  section.data(233).logicalSrcIdx = 232;
	  section.data(233).dtTransOffset = 232;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtB)
    ;%
      section.nData     = 101;
      section.data(101)  = dumData; %prealloc
      
	  ;% rtB.Integrator
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtB.Fcn3
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtB.Add
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtB.Divide
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtB.Add1
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtB.t
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtB.Divide_i
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtB.Add3
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtB.Add_d
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtB.Gain
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtB.Switch
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtB.Subtract
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtB.Divide1
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtB.fac1
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtB.Integrator_o
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtB.Add_d4
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtB.MinMax2
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 16;
	
	  ;% rtB.Fcn2
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 17;
	
	  ;% rtB.Add3_f
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 18;
	
	  ;% rtB.Add5
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 19;
	
	  ;% rtB.Add8
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 20;
	
	  ;% rtB.Add_j
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 21;
	
	  ;% rtB.Add_p
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 22;
	
	  ;% rtB.Add2
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 23;
	
	  ;% rtB.Add4
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 24;
	
	  ;% rtB.Divide_m
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 25;
	
	  ;% rtB.Add_n
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 26;
	
	  ;% rtB.Product
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 27;
	
	  ;% rtB.Add3_n
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 28;
	
	  ;% rtB.Subtract1
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 29;
	
	  ;% rtB.Add2_j
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 30;
	
	  ;% rtB.MinMax1
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 31;
	
	  ;% rtB.Subtract_p
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 32;
	
	  ;% rtB.fiap
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 33;
	
	  ;% rtB.taup
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 34;
	
	  ;% rtB.Subtract2
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 35;
	
	  ;% rtB.tauTs
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 36;
	
	  ;% rtB.tauTv
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 37;
	
	  ;% rtB.Subtract5
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 38;
	
	  ;% rtB.tauVuev
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 39;
	
	  ;% rtB.Subtract3
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 40;
	
	  ;% rtB.tauVumv
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 41;
	
	  ;% rtB.Subtract4
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 42;
	
	  ;% rtB.tauVusv
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 43;
	
	  ;% rtB.Divide_d
	  section.data(45).logicalSrcIdx = 44;
	  section.data(45).dtTransOffset = 44;
	
	  ;% rtB.Product_p
	  section.data(46).logicalSrcIdx = 45;
	  section.data(46).dtTransOffset = 45;
	
	  ;% rtB.Divide_ix
	  section.data(47).logicalSrcIdx = 46;
	  section.data(47).dtTransOffset = 46;
	
	  ;% rtB.Product_k
	  section.data(48).logicalSrcIdx = 47;
	  section.data(48).dtTransOffset = 47;
	
	  ;% rtB.Divide_g
	  section.data(49).logicalSrcIdx = 48;
	  section.data(49).dtTransOffset = 48;
	
	  ;% rtB.Product_o
	  section.data(50).logicalSrcIdx = 49;
	  section.data(50).dtTransOffset = 49;
	
	  ;% rtB.Gain_l
	  section.data(51).logicalSrcIdx = 50;
	  section.data(51).dtTransOffset = 50;
	
	  ;% rtB.Divide_n
	  section.data(52).logicalSrcIdx = 51;
	  section.data(52).dtTransOffset = 51;
	
	  ;% rtB.Product_a
	  section.data(53).logicalSrcIdx = 52;
	  section.data(53).dtTransOffset = 52;
	
	  ;% rtB.Subtract_a
	  section.data(54).logicalSrcIdx = 53;
	  section.data(54).dtTransOffset = 53;
	
	  ;% rtB.Divide_f
	  section.data(55).logicalSrcIdx = 54;
	  section.data(55).dtTransOffset = 54;
	
	  ;% rtB.Product_n
	  section.data(56).logicalSrcIdx = 55;
	  section.data(56).dtTransOffset = 55;
	
	  ;% rtB.Divide_mg
	  section.data(57).logicalSrcIdx = 56;
	  section.data(57).dtTransOffset = 56;
	
	  ;% rtB.Product_h
	  section.data(58).logicalSrcIdx = 57;
	  section.data(58).dtTransOffset = 57;
	
	  ;% rtB.Divide_iy
	  section.data(59).logicalSrcIdx = 58;
	  section.data(59).dtTransOffset = 58;
	
	  ;% rtB.Product_k0
	  section.data(60).logicalSrcIdx = 59;
	  section.data(60).dtTransOffset = 59;
	
	  ;% rtB.Divide_mf
	  section.data(61).logicalSrcIdx = 60;
	  section.data(61).dtTransOffset = 60;
	
	  ;% rtB.Product_e
	  section.data(62).logicalSrcIdx = 61;
	  section.data(62).dtTransOffset = 61;
	
	  ;% rtB.Divide_b
	  section.data(63).logicalSrcIdx = 62;
	  section.data(63).dtTransOffset = 62;
	
	  ;% rtB.Product_f
	  section.data(64).logicalSrcIdx = 63;
	  section.data(64).dtTransOffset = 63;
	
	  ;% rtB.Divide_l
	  section.data(65).logicalSrcIdx = 64;
	  section.data(65).dtTransOffset = 64;
	
	  ;% rtB.Product_kz
	  section.data(66).logicalSrcIdx = 65;
	  section.data(66).dtTransOffset = 65;
	
	  ;% rtB.Divide_fl
	  section.data(67).logicalSrcIdx = 66;
	  section.data(67).dtTransOffset = 66;
	
	  ;% rtB.Product_e1
	  section.data(68).logicalSrcIdx = 67;
	  section.data(68).dtTransOffset = 67;
	
	  ;% rtB.Divide_im
	  section.data(69).logicalSrcIdx = 68;
	  section.data(69).dtTransOffset = 68;
	
	  ;% rtB.Product_ff
	  section.data(70).logicalSrcIdx = 69;
	  section.data(70).dtTransOffset = 69;
	
	  ;% rtB.Subtract_h
	  section.data(71).logicalSrcIdx = 70;
	  section.data(71).dtTransOffset = 70;
	
	  ;% rtB.Divide_nt
	  section.data(72).logicalSrcIdx = 71;
	  section.data(72).dtTransOffset = 71;
	
	  ;% rtB.Product_nh
	  section.data(73).logicalSrcIdx = 72;
	  section.data(73).dtTransOffset = 72;
	
	  ;% rtB.Subtract_hg
	  section.data(74).logicalSrcIdx = 73;
	  section.data(74).dtTransOffset = 73;
	
	  ;% rtB.Divide2
	  section.data(75).logicalSrcIdx = 74;
	  section.data(75).dtTransOffset = 74;
	
	  ;% rtB.Divide_nd
	  section.data(76).logicalSrcIdx = 75;
	  section.data(76).dtTransOffset = 75;
	
	  ;% rtB.tauc
	  section.data(77).logicalSrcIdx = 76;
	  section.data(77).dtTransOffset = 76;
	
	  ;% rtB.Add11
	  section.data(78).logicalSrcIdx = 77;
	  section.data(78).dtTransOffset = 77;
	
	  ;% rtB.tauRep
	  section.data(79).logicalSrcIdx = 78;
	  section.data(79).dtTransOffset = 78;
	
	  ;% rtB.Add10
	  section.data(80).logicalSrcIdx = 79;
	  section.data(80).dtTransOffset = 79;
	
	  ;% rtB.tauRmp
	  section.data(81).logicalSrcIdx = 80;
	  section.data(81).dtTransOffset = 80;
	
	  ;% rtB.Add9
	  section.data(82).logicalSrcIdx = 81;
	  section.data(82).dtTransOffset = 81;
	
	  ;% rtB.tauRsp
	  section.data(83).logicalSrcIdx = 82;
	  section.data(83).dtTransOffset = 82;
	
	  ;% rtB.Add6
	  section.data(84).logicalSrcIdx = 83;
	  section.data(84).dtTransOffset = 83;
	
	  ;% rtB.Add7
	  section.data(85).logicalSrcIdx = 84;
	  section.data(85).dtTransOffset = 84;
	
	  ;% rtB.tauEmaxlv
	  section.data(86).logicalSrcIdx = 85;
	  section.data(86).dtTransOffset = 85;
	
	  ;% rtB.tauEmaxrv
	  section.data(87).logicalSrcIdx = 86;
	  section.data(87).dtTransOffset = 86;
	
	  ;% rtB.Add2_i
	  section.data(88).logicalSrcIdx = 87;
	  section.data(88).dtTransOffset = 87;
	
	  ;% rtB.Add5_g
	  section.data(89).logicalSrcIdx = 88;
	  section.data(89).dtTransOffset = 88;
	
	  ;% rtB.Add2_jj
	  section.data(90).logicalSrcIdx = 89;
	  section.data(90).dtTransOffset = 89;
	
	  ;% rtB.Add4_l
	  section.data(91).logicalSrcIdx = 90;
	  section.data(91).dtTransOffset = 90;
	
	  ;% rtB.Add7_f
	  section.data(92).logicalSrcIdx = 91;
	  section.data(92).dtTransOffset = 91;
	
	  ;% rtB.Divide_h
	  section.data(93).logicalSrcIdx = 92;
	  section.data(93).dtTransOffset = 92;
	
	  ;% rtB.Divide_j
	  section.data(94).logicalSrcIdx = 93;
	  section.data(94).dtTransOffset = 93;
	
	  ;% rtB.y
	  section.data(95).logicalSrcIdx = 94;
	  section.data(95).dtTransOffset = 94;
	
	  ;% rtB.Divide_b5
	  section.data(96).logicalSrcIdx = 95;
	  section.data(96).dtTransOffset = 95;
	
	  ;% rtB.Divide_e
	  section.data(97).logicalSrcIdx = 96;
	  section.data(97).dtTransOffset = 96;
	
	  ;% rtB.Add1_b
	  section.data(98).logicalSrcIdx = 97;
	  section.data(98).dtTransOffset = 97;
	
	  ;% rtB.Add3_b
	  section.data(99).logicalSrcIdx = 98;
	  section.data(99).dtTransOffset = 98;
	
	  ;% rtB.Add5_l
	  section.data(100).logicalSrcIdx = 99;
	  section.data(100).dtTransOffset = 99;
	
	  ;% rtB.Add1_a
	  section.data(101).logicalSrcIdx = 100;
	  section.data(101).dtTransOffset = 100;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.LogicalOperator
	  section.data(1).logicalSrcIdx = 101;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 6;
    sectIdxOffset = 2;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtDWork)
    ;%
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% rtDWork.Derivative_RWORK.TimeStampA
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.Derivative_RWORK_l.TimeStampA
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDWork.Derivative_RWORK_o.TimeStampA
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 20;
      section.data(20)  = dumData; %prealloc
      
	  ;% rtDWork.Scope_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 3;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.Scope1_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 4;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDWork.Scope10_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 5;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDWork.Scope11_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 6;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDWork.Scope12_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 7;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDWork.Scope13_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 8;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDWork.Scope14_PWORK.LoggedData
	  section.data(7).logicalSrcIdx = 9;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDWork.Scope15_PWORK.LoggedData
	  section.data(8).logicalSrcIdx = 10;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtDWork.Scope16_PWORK.LoggedData
	  section.data(9).logicalSrcIdx = 11;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtDWork.Scope17_PWORK.LoggedData
	  section.data(10).logicalSrcIdx = 12;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtDWork.Scope18_PWORK.LoggedData
	  section.data(11).logicalSrcIdx = 13;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtDWork.Scope19_PWORK.LoggedData
	  section.data(12).logicalSrcIdx = 14;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtDWork.Scope2_PWORK.LoggedData
	  section.data(13).logicalSrcIdx = 15;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtDWork.Scope3_PWORK.LoggedData
	  section.data(14).logicalSrcIdx = 16;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtDWork.Scope4_PWORK.LoggedData
	  section.data(15).logicalSrcIdx = 17;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtDWork.Scope5_PWORK.LoggedData
	  section.data(16).logicalSrcIdx = 18;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtDWork.Scope6_PWORK.LoggedData
	  section.data(17).logicalSrcIdx = 19;
	  section.data(17).dtTransOffset = 16;
	
	  ;% rtDWork.Scope7_PWORK.LoggedData
	  section.data(18).logicalSrcIdx = 20;
	  section.data(18).dtTransOffset = 17;
	
	  ;% rtDWork.Scope8_PWORK.LoggedData
	  section.data(19).logicalSrcIdx = 21;
	  section.data(19).dtTransOffset = 18;
	
	  ;% rtDWork.Scope9_PWORK.LoggedData
	  section.data(20).logicalSrcIdx = 22;
	  section.data(20).dtTransOffset = 19;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtDWork.MinMax2_MODE
	  section.data(1).logicalSrcIdx = 23;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.MinMax1_MODE
	  section.data(2).logicalSrcIdx = 24;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 9;
      section.data(9)  = dumData; %prealloc
      
	  ;% rtDWork.Fcn_DWORK1
	  section.data(1).logicalSrcIdx = 25;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.Fcn2_DWORK1
	  section.data(2).logicalSrcIdx = 26;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDWork.Fcn_DWORK1_o
	  section.data(3).logicalSrcIdx = 27;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDWork.Fcn1_DWORK1
	  section.data(4).logicalSrcIdx = 28;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDWork.Fcn2_DWORK1_k
	  section.data(5).logicalSrcIdx = 29;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDWork.Fcn1_DWORK1_b
	  section.data(6).logicalSrcIdx = 30;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDWork.Fcn_DWORK1_f
	  section.data(7).logicalSrcIdx = 31;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDWork.Fcn_DWORK1_a
	  section.data(8).logicalSrcIdx = 32;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtDWork.Fcn1_DWORK1_h
	  section.data(9).logicalSrcIdx = 33;
	  section.data(9).dtTransOffset = 8;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDWork.is_active_c2_cardio_v4
	  section.data(1).logicalSrcIdx = 34;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 17;
      section.data(17)  = dumData; %prealloc
      
	  ;% rtDWork.RelationalOperator_Mode
	  section.data(1).logicalSrcIdx = 35;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDWork.RelationalOperator1_Mode
	  section.data(2).logicalSrcIdx = 36;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDWork.Switch_Mode
	  section.data(3).logicalSrcIdx = 37;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDWork.Switch_Mode_e
	  section.data(4).logicalSrcIdx = 38;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDWork.Switch_Mode_g
	  section.data(5).logicalSrcIdx = 39;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDWork.Switch2_Mode
	  section.data(6).logicalSrcIdx = 40;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDWork.Switch_Mode_f
	  section.data(7).logicalSrcIdx = 41;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDWork.Switch1_Mode
	  section.data(8).logicalSrcIdx = 42;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtDWork.Switch_Mode_j
	  section.data(9).logicalSrcIdx = 43;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtDWork.Switch_Mode_c
	  section.data(10).logicalSrcIdx = 44;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtDWork.Switch2_Mode_p
	  section.data(11).logicalSrcIdx = 45;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtDWork.Switch1_Mode_d
	  section.data(12).logicalSrcIdx = 46;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtDWork.Switch_Mode_h
	  section.data(13).logicalSrcIdx = 47;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtDWork.Switch_Mode_p
	  section.data(14).logicalSrcIdx = 48;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtDWork.Switch1_Mode_l
	  section.data(15).logicalSrcIdx = 49;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtDWork.isStable
	  section.data(16).logicalSrcIdx = 50;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtDWork.doneDoubleBufferReInit
	  section.data(17).logicalSrcIdx = 51;
	  section.data(17).dtTransOffset = 16;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 3079825192;
  targMap.checksum1 = 2752766914;
  targMap.checksum2 = 2173928114;
  targMap.checksum3 = 1982403063;

