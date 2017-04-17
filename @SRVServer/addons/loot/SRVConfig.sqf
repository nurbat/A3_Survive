countPointLoot = 5;//Max, Количество точек спавна
countItemLoot = 5;//Max || Колиство предметов на точке, кроме оружия
countMagazineLoot = [2, 3];//[Min, Max] || Количество патронов к оружию
countWeaponLoot = 3;//Max || Максимальное количество оружия на здание
chanceBuilding = true;//Использовать процент здания на весь лут внутри
DebugLevel = 3;

timeDelay = 60;
timeLifeLoot = 120;
distanceLoad = 300;
serverLoad = false; //Вычесления на сервере (true) / Вычесления на клиенте (false)

buildingList = [
    ["Military", "Land_Mil_ControlTower", []],
    ["Military", "Land_Ss_hangar", []],
    ["Military", "Land_Hlidac_budka", []],
    ["Military", "Land_Mil_House", []],
    ["Military", "Land_Mil_Guardhouse", []],
    ["Military", "Land_Ind_Workshop01_03", []],//Домик с интсрументами
    ["Military", "Land_HouseBlock_A1_1", []],//Дом с аркой
    ["Military", "Land_A_GeneralStore_01a", []]//Магазин
];

lootTable = [
    ["Military", 
        [
            [0, "Trash"],
            [50, "arifle_MXC_F"]
        ]
    ]
];

lootGroup =
[

    //Rocket Launcher
    ["Arma3_Rocket Launcher", 
        [
            [0, "launch_NLAW_F"],//	PCML
            [0, "launch_RPG32_F"],//RPG-42 Alamut
            [0, "launch_B_Titan_F"],//Titan MPRL (Sand)
            [0, "launch_I_Titan_F"],//	Titan MPRL (Digital)
            [0, "launch_O_Titan_F"],//	Titan MPRL (Hex)
            [0, "launch_Titan_F"],//Titan MPRL
            [0, "launch_B_Titan_short_F"],//Titan MPRL Compact (Sand)
            [0, "launch_I_Titan_short_F"],//	Titan MPRL Compact (Olive)
            [0, "launch_O_Titan_short_F"],//Titan MPRL Compact (Coyote)
            [0, "launch_RPG7_F"],//Titan MPRL Compact (Coyote)
            [0, "launch_Titan_short_F"]//	Titan MPRL Compact
        ]
    ],
    ["Arma3_RocketLauncher_Ammo", 
        [
            [0, "NLAW_F"],//PCML
            [0, "RPG32_F"],//RPG-42 Alamut
            [0, "RPG32_HE_F"],//RPG-42 Alamut
            [0, "RPG7_F"],//RPG-42 Alamut
            [0, "Titan_AA"],//Titan
            [0, "Titan_AT"],//Titan
            [0, "Titan_AP"]//Titan
        ]
    ],
    
    //Pistol
    ["Arma3_Pistol", 
        [
            [0, "hgun_ACPC2_F"],//ACP-C2 .45 ACP
            [0, "hgun_P07_F"],//P07 9 mm
            [0, "hgun_Pistol_heavy_01_F"],//4-five .45 ACP
            [0, "hgun_Pistol_heavy_02_F"],//Zubr .45 ACP
            [0, "hgun_Pistol_Signal_F"],//Starter Pistol
            [0, "hgun_Rook40_F"]//	Rook-40 9 mm
        ]	
    ],
    ["Arma3_Pistol_Ammo", 
        [
            [0, "9Rnd_45ACP_Mag"],
            [0, "16Rnd_9x21_Mag"],
            [0, "16Rnd_9x21_red_Mag"],
            [0, "16Rnd_9x21_green_Mag"],
            [0, "16Rnd_9x21_yellow_Mag"],
            [0, "30Rnd_9x21_Mag"],
            [0, "30Rnd_9x21_Red_Mag"],
            [0, "30Rnd_9x21_Yellow_Mag"],
            [0, "30Rnd_9x21_Green_Mag"],
            [0, "11Rnd_45ACP_Mag"],
            [0, "6Rnd_45ACP_Cylinder"]
        ] 
    ],
    

    ["Arma3_MarksmanRifle", 
        [
            [0, "arifle_MXM_F"],//MXM 6.5 mm
            [0, "srifle_DMR_01_F"],//Rahim 7.62 mm
            [0, "srifle_DMR_02_F"],//MAR-10 .338 (Black)
            [0, "srifle_DMR_02_camo_F"],//MAR-10 .338 (Camo)
            [0, "srifle_DMR_02_sniper_F"],//MAR-10 .338 (Sand)
            [0, "srifle_DMR_03_F"],//Mk-I EMR 7.62 mm (Black)
            [0, "srifle_DMR_03_khaki_F"],//Mk-I EMR 7.62 mm (Khaki)
            [0, "srifle_DMR_03_tan_F"],//Mk-I EMR 7.62 mm (Sand)
            [0, "srifle_DMR_03_multicam_F"],//Mk-I EMR 7.62 mm (Camo
            [0, "srifle_DMR_03_woodland_F"],//Mk-I EMR 7.62 mm (Woodland)	
            [0, "srifle_DMR_04_F"],//ASP-1 Kir 12.7 mm (Black)
            [0, "srifle_DMR_04_Tan_F"],//ASP-1 Kir 12.7 mm (Tan)	
            [0, "srifle_DMR_05_blk_F"],//Cyrus 9.3 mm (Black)	
            [0, "srifle_DMR_05_hex_F"],//Cyrus 9.3 mm (Hex)	
            [0, "srifle_DMR_05_tan_f"],//Cyrus 9.3 mm (Tan)	
            [0, "srifle_DMR_06_camo_F"],//Mk14 7.62 mm (Camo)	
            [0, "srifle_DMR_06_olive_F"],//Mk14 7.62 mm (Olive)	
            [0, "arifle_SPAR_03_blk_F"],//
            [0, "arifle_SPAR_03_khk_F"],//
            [0, "arifle_SPAR_03_snd_F"]//
        ]
    ],
    ["Arma3_MarksmanRifle_Ammo", 
        [
            [0, "30Rnd_65x39_caseless_mag"],
            [0, "30Rnd_65x39_caseless_mag_Tracer"],
            [0, "10Rnd_338_Mag"],
            [0, "10Rnd_762x54_Mag"],
            [0, "20Rnd_762x51_Mag"],
            [0, "10Rnd_127x54_Mag"],
            [0, "10Rnd_93x64_DMR_05_Mag"]
        ]
    ],

    //Rifle
    ["Arma3_Rifle", 
        [
            [0, "srifle_EBR_F"],//Mk18 ABR 7.62 mm
            [0, "arifle_Katiba_F"],//Katiba 6.5 mm
            [0, "arifle_Katiba_C_F"],//Katiba Carbine 6.5 mm
            [0, "arifle_Katiba_GL_F"],//Katiba GL 6.5 mm
            [0, "arifle_Mk20_F"],//Mk20 5.56 mm (Camo)
            [0, "arifle_Mk20_plain_F"],//Mk20 5.56 mm
            [0, "arifle_Mk20C_F"],//Mk20C 5.56 mm (Camo)
            [0, "arifle_Mk20C_plain_F"],//Mk20C 5.56 mm
            [0, "arifle_Mk20_GL_F"],//Mk20 EGLM 5.56 mm (Camo)
            [0, "arifle_Mk20_GL_plain_F"],//Mk20 EGLM 5.56 mm
            [0, "arifle_MXC_F"],//MXC 6.5 mm
            [0, "arifle_MXC_khk_F"],//MXC 6.5 mm (Khaki)	
            [0, "arifle_MX_F"],//MX 6.5 mm
            [0, "arifle_MX_khk_F"],//MX 6.5 mm (Khaki)	
            [0, "arifle_MXM_F"],//MXM 6.5 mm
            [0, "arifle_MX_GL_F"],//MX 3GL 6.5 mm
            [0, "arifle_MX_GL_khk_F"],//MX 3GL 6.5 mm (Khaki)	
            [0, "arifle_SDAR_F"],//SDAR 5.56 mm
            [0, "arifle_TRG21_F"],//TRG-21 5.56 mm
            [0, "arifle_TRG20_F"],//TRG-20 5.56 mm
            [0, "arifle_TRG21_GL_F"],//TRG-21 EGLM 5.56 mm
            [0, "arifle_AK12_F"],//AK-12 7.62 mm	
            [0, "arifle_AK12_GL_F"],//AK-12 GL 7.62 mm	
            [0, "arifle_AKM_F"],//AKM 7.62 mm	
            [0, "arifle_AKM_FL_F"],//
            [0, "arifle_AKS_F"],//AKS-74U 5.45 mm	
            [0, "arifle_ARX_blk_F"],//Type 115 6.5 mm (Black)	
            [0, "arifle_ARX_ghex_F"],//
            [0, "arifle_ARX_hex_F"],//
            [0, "arifle_CTAR_blk_F"],//CAR-95 5.8 mm (Black)	
            [0, "arifle_CTAR_hex_F"],//
            [0, "arifle_CTAR_ghex_F"],//
            [0, "arifle_CTAR_GL_blk_F"],//
            [0, "arifle_CTAR_GL_hex_F"],//
            [0, "arifle_CTAR_GL_ghex_F"],//
            [0, "arifle_SPAR_01_blk_F"],//SPAR-16 5.56 mm (Black)	
            [0, "arifle_SPAR_01_khk_F"],//
            [0, "arifle_SPAR_01_snd_F"],//
            [0, "arifle_SPAR_01_GL_blk_F"],//
            [0, "arifle_SPAR_01_GL_khk_F"],//
            [0, "arifle_SPAR_01_GL_snd_F"]//
        ]
    ],
    ["Arma3_Rifle_Ammo", 
        [
            [0, "30Rnd_65x39_caseless_green"],
            [0, "30Rnd_65x39_caseless_green_mag_Tracer"],
            [0, "30Rnd_556x45_Stanag"],
            [0, "30Rnd_556x45_Stanag_Tracer_Red"],
            [0, "30Rnd_556x45_Stanag_Tracer_Green"],
            [0, "30Rnd_556x45_Stanag_Tracer_Yellow"],
            [0, "30Rnd_556x45_Stanag_red"],
            [0, "30Rnd_556x45_Stanag_green"],
            [0, "30Rnd_65x39_caseless_mag"],
            [0, "30Rnd_65x39_caseless_mag_Tracer"],
            [0, "10Rnd_338_Mag"],
            [0, "30Rnd_762x39_Mag_F"],//
            [0, "30Rnd_762x39_Mag_Green_F"],//
            [0, "30Rnd_762x39_Mag_Tracer_F"],//
            [0, "30Rnd_762x39_Mag_Tracer_Green_F"],
            [0, "10Rnd_50BW_Mag_F"],
            [0, "30Rnd_580x42_Mag_F"],
            [0, "30Rnd_580x42_Mag_Tracer_F"]
        ]
    ],
    
    ["Arma3_GrenadeLauncher", 
        [
            [0, "1Rnd_HE_Grenade_shell"],
            [0, "UGL_FlareWhite_F"],
            [0, "UGL_FlareGreen_F"],
            [0, "UGL_FlareRed_F"],
            [0, "UGL_FlareYellow_F"],
            [0, "UGL_FlareCIR_F"],
            [0, "1Rnd_Smoke_Grenade_shell"],
            [0, "1Rnd_SmokeRed_Grenade_shell"],
            [0, "1Rnd_SmokeGreen_Grenade_shell"],
            [0, "1Rnd_SmokeYellow_Grenade_shell"],
            [0, "1Rnd_SmokePurple_Grenade_shell"],
            [0, "1Rnd_SmokeBlue_Grenade_shell"],
            [0, "1Rnd_SmokeOrange_Grenade_shell"],
            [0, "3Rnd_HE_Grenade_shell"],
            [0, "3Rnd_UGL_FlareWhite_F"],
            [0, "3Rnd_UGL_FlareGreen_F"],
            [0, "3Rnd_UGL_FlareRed_F"],
            [0, "3Rnd_UGL_FlareYellow_F"],
            [0, "3Rnd_UGL_FlareCIR_F"],
            [0, "3Rnd_Smoke_Grenade_shell"],
            [0, "3Rnd_SmokeRed_Grenade_shell"],
            [0, "3Rnd_SmokeGreen_Grenade_shell"],
            [0, "3Rnd_SmokeYellow_Grenade_shell"],
            [0, "3Rnd_SmokePurple_Grenade_shell"],
            [0, "3Rnd_SmokeBlue_Grenade_shell"],
            [0, "3Rnd_SmokeOrange_Grenade_shell"],
            [0, "20Rnd_556x45_UW_mag"],
            [0, "30Rnd_556x45_Stanag"],
            [0, "30Rnd_556x45_Stanag_Tracer_Red"],
            [0, "30Rnd_556x45_Stanag_Tracer_Green"],
            [0, "30Rnd_556x45_Stanag_Tracer_Yellow"],
            [0, "30Rnd_556x45_Stanag_green"],
            [0, "30Rnd_556x45_Stanag_red"],
            [0, "6Rnd_GreenSignal_F"],
            [0, "6Rnd_RedSignal_F"]
        ]
    ],    
    
    

    ["Arma3_Submachine", 
        [
            [0, "hgun_PDW2000_F"],//PDW2000 9 mm
            [0, "SMG_01_F"],//Vermin SMG .45 ACP
            [0, "SMG_02_F"],//Sting 9 mm
            [0, ""],
            [0, ""],
            [0, ""]
        ]
    ],
    ["Arma3_Submachine_Ammo", 
        [
            [0, "30Rnd_9x21_Mag"],
            [0, "30Rnd_9x21_Red_Mag"],
            [0, "30Rnd_9x21_Yellow_Mag"],
            [0, "30Rnd_9x21_Green_Mag"],
            [0, "16Rnd_9x21_Mag"],
            [0, "16Rnd_9x21_red_Mag"],
            [0, "16Rnd_9x21_green_Mag"],
            [0, "16Rnd_9x21_yellow_Mag"],
            [0, "30Rnd_45ACP_Mag_SMG_01"],
            [0, "30Rnd_45ACP_Mag_SMG_01_tracer_green"],
            [0, "30Rnd_45ACP_Mag_SMG_01_Tracer_Red"],
            [0, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow"],
            [0, "30Rnd_9x21_Mag_SMG_02"],
            [0, "30Rnd_9x21_Mag_SMG_02_Tracer_Red"],
            [0, "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow"],
            [0, "30Rnd_9x21_Mag_SMG_02_Tracer_Green"],
            [0, ""],
            [0, ""],
            [0, ""],
        ]
    ],



    ["Arma3_LightMachine", 
        [
            [0, "LMG_Mk200_F"],//Mk200 6.5 mm
            [0, "LMG_Zafir_F"],//Zafir 7.62 mm
            [0, "arifle_MX_SW_F"],//MX SW 6.5 mm
            [0, "arifle_MX_SW_khk_F"],//MX SW 6.5 mm (Khaki)	
            [0, "MMG_01_hex_F"],//Navid 9.3 mm (Hex)	
            [0, "MMG_01_tan_F"],//Navid 9.3 mm (Tan)	
            [0, "MMG_02_camo_F"],//SPMG .338 (MTP)	
            [0, "MMG_02_black_F"],//SPMG .338 (Black)	
            [0, "MMG_02_sand_F"],//SPMG .338 (Sand)	
            [0, "arifle_CTARS_blk_F"],//CAR-95-1 5.8mm (Black)	
            [0, "arifle_CTARS_hex_F"],//
            [0, "arifle_CTARS_ghex_F"],//
            [0, "arifle_SPAR_02_blk_F"],//SPAR-16S 5.56 mm (Black)	
            [0, "arifle_SPAR_02_khk_F"],//
            [0, "arifle_SPAR_02_snd_F"]
        ]
    ],
    ["Arma3_LightMachine_Ammo", 
        [
            [0, "200Rnd_65x39_cased_Box"],
            [0, "200Rnd_65x39_cased_Box_Tracer"],
            [0, "150Rnd_762x54_Box"],
            [0, "150Rnd_762x54_Box_Tracer"],
            [0, "100Rnd_65x39_caseless_mag"],
            [0, "100Rnd_65x39_caseless_mag_Tracer"],
            [0, "200Rnd_65x39_belt_Tracer_Green"],
            [0, "200Rnd_65x39_belt_Tracer_Red"],
            [0, "200Rnd_65x39_belt_Tracer_Yellow"],
            [0, "150Rnd_93x64_Mag"],
            [0, "100Rnd_580x42_Mag_F"],
            [0, "100Rnd_580x42_Mag_Tracer_F"]
        ]
    ],
       

    ["Arma3_Sniper", 
        [
            [0, "srifle_GM6_F"],//	GM6 Lynx 12.7 mm
            [0, "srifle_GM6_camo_F"],//GM6 Lynx 12.7 mm (camo)
            [0, "srifle_LRR_F"],//M320 LRR .408
            [0, "srifle_LRR_camo_F"],//	M320 LRR .408 (Camo)
            [0, "srifle_LRR_tna_F"]//M320 LRR .408 (Tropic)	
        ]
    ],
    ["Arma3_Sniper_Ammo", 
        [
            [0, "5Rnd_127x108_Mag"],
            [0, "5Rnd_127x108_APDS_Mag"],
            [0, "7Rnd_408_Mag"]
        ]
    ],
    
    ["Arma3_Items", 
        [
            [0, "ItemWatch"],//	
            [0, "ItemCompass"],//
            [0, "ItemGPS"],//
            [0, "ItemRadio"],//
            [0, "ItemMap"],//
            [0, "Binocular"],//
            [0, "Rangefinder"],//
            [0, "NVGoggles"],//
            [0, "Laserdesignator"],//
            [0, "Laserbatteries"],//
            [0, "FirstAidKit"],//
            [0, "Medikit"],//
            [0, "ToolKit"],//
            [0, "NVGogglesB_blk_F"]//
        ]
    ],

    
    ["Arma3_Accessories", 
        [
            [0, "optic_ACO_grn"],
            [0, "optic_MRCO"],
            [0, "optic_SOS"],
            [0, "optic_DMS"],
            [0, "muzzle_snds_B"],
            [0, "optic_Arco"],
            [0, "acc_pointer_IR"],
            [0, "optic_Hamr"],
            [0, "muzzle_snds_acp"],
            [0, "muzzle_snds_L"],
            [0, "optic_MRD"],
            [0, "optic_Yorris"],
            [0, "optic_Arco_blk_F"],
            [0, "optic_Nightstalker"],
            [0, "muzzle_snds_H"],
            [0, "optic_Holosight"],
            [0, "optic_Holosight_smg"],
            [0, "optic_Aco_smg"],
            [0, "optic_ACO_grn_smg"],
            [0, "optic_LRPS"],
            [0, "optic_AMS_snd"],
            [0, "muzzle_snds_338_sand"],
            [0, "optic_KHS_blk"],
            [0, "muzzle_snds_93mmg"],
            [0, "optic_KHS_old"],
            [0, "optic_Holosight_khk_F"],
            [0, "optic_Hamr_khk_F"],
            [0, "muzzle_snds_H_khk_F"],
            [0, "optic_SOS_khk_F"],
            [0, "optic_LRPS_tna_F"],
            [0, "optic_LRPS_ghex_F"],
            [0, "muzzle_snds_65_TI_blk_F"],
            [0, "optic_ERCO_blk_F"],
            [0, "bipod_01_F_khk"],
            [0, "optic_Holosight_smg_blk_F"],
            [0, "muzzle_snds_B_snd_F"],
            [0, "muzzle_snds_B_khk_F"],
            [0, "muzzle_snds_65_TI_hex_F"],
            [0, "muzzle_snds_65_TI_ghex_F"],
            [0, "muzzle_snds_H_MG_blk_F"],
            [0, "muzzle_snds_H_MG_khk_F"],
            [0, "optic_Arco_ghex_F"],
            [0, "optic_DMS_ghex_F"],
            [0, "optic_ERCO_khk_F"],
            [0, "optic_ERCO_snd_F"],
            [0, "muzzle_snds_58_hex_F"],
            [0, "muzzle_snds_58_ghex_F"],
            [0, "muzzle_snds_58_wdm_F"],
            [0, "muzzle_snds_58_blk_F"],
            [0, "muzzle_snds_m_snd_F"],
            [0, "muzzle_snds_m_khk_F"],
            [0, "muzzle_snds_H_snd_F"]
        ]
    ],
];