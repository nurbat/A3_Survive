countPointLoot = 5;//Max, Количество точек спавна
countItemLoot = 5;//Max || Колиство предметов на точке, кроме оружия
countMagazineLoot = [2, 3];//[Min, Max] || Количество патронов к оружию
countWeaponLoot = 3;//Max || Максимальное количество оружия на здание
chanceBuilding = true;//Использовать процент здания на весь лут внутри
DebugLevel = 0;

timeDelay = 60;
timeLifeLoot = 120;
distanceLoad = 300;
serverLoad = false; //Вычесления на сервере (true) / Вычесления на клиенте (false)

lootTable = [
    ["EDIT_TYPE", 
        [
            [0, "Arma3_RocketLauncher"],
            [0, "Arma3_RocketLauncher_Ammo"],
            [0, "Arma3_Pistol"],
            [0, "Arma3_Pistol_Ammo"],
            [0, "Arma3_MarksmanRifle"],
            [0, "Arma3_MarksmanRifle_Ammo"],
            [0, "Arma3_Rifle"],
            [0, "Arma3_Rifle_Ammo"],
            [0, "Arma3_GrenadeLauncher"],
            [0, "Arma3_Submachine"],
            [0, "Arma3_Submachine_Ammo"],
            [0, "Arma3_LightMachine"],
            [0, "Arma3_LightMachine_Ammo"],
            [0, "Arma3_Sniper"],
            [0, "Arma3_Sniper_Ammo"],
            [0, "Arma3_Items"],
            [0, "Arma3_Accessories"]
        ]
    ]
];

lootGroup =
[

    //Rocket Launcher
    ["Arma3_RocketLauncher", 
        [
            [10, "launch_NLAW_F"],//	PCML
            [10, "launch_RPG32_F"],//RPG-42 Alamut
            [5, "launch_B_Titan_F"],//Titan MPRL (Sand)
            [5, "launch_I_Titan_F"],//	Titan MPRL (Digital)
            [5, "launch_O_Titan_F"],//	Titan MPRL (Hex)
            [5, "launch_Titan_F"],//Titan MPRL
            [5, "launch_B_Titan_short_F"],//Titan MPRL Compact (Sand)
            [5, "launch_I_Titan_short_F"],//	Titan MPRL Compact (Olive)
            [5, "launch_O_Titan_short_F"],//Titan MPRL Compact (Coyote)
            [5, "launch_RPG7_F"],//Titan MPRL Compact (Coyote)
            [5, "launch_Titan_short_F"]//	Titan MPRL Compact
        ]
    ],
    ["Arma3_RocketLauncher_Ammo", 
        [
            [3, "NLAW_F"],//PCML
            [3, "RPG32_F"],//RPG-42 Alamut
            [3, "RPG32_HE_F"],//RPG-42 Alamut
            [3, "RPG7_F"],//RPG-42 Alamut
            [2, "Titan_AA"],//Titan
            [2, "Titan_AT"],//Titan
            [2, "Titan_AP"]//Titan
        ]
    ],
    
    //Pistol
    ["Arma3_Pistol", 
        [
            [70, "hgun_ACPC2_F"],//ACP-C2 .45 ACP
            [70, "hgun_P707_F"],//P07 9 mm
            [70, "hgun_Pistol_heavy_01_F"],//4-five .45 ACP
            [70, "hgun_Pistol_heavy_02_F"],//Zubr .45 ACP
            [70, "hgun_Pistol_Signal_F"],//Starter Pistol
            [70, "hgun_Rook40_F"]//	Rook-40 9 mm
        ]	
    ],
    ["Arma3_Pistol_Ammo", 
        [
            [60, "9Rnd_45ACP_Mag"],
            [60, "16Rnd_9x21_Mag"],
            [60, "16Rnd_9x21_red_Mag"],
            [60, "16Rnd_9x21_green_Mag"],
            [60, "16Rnd_9x21_yellow_Mag"],
            [60, "30Rnd_9x21_Mag"],
            [60, "30Rnd_9x21_Red_Mag"],
            [60, "30Rnd_9x21_Yellow_Mag"],
            [60, "30Rnd_9x21_Green_Mag"],
            [60, "11Rnd_45ACP_Mag"],
            [60, "6Rnd_45ACP_Cylinder"]
        ] 
    ],
    

    ["Arma3_MarksmanRifle", 
        [
            [20, "arifle_MXM_F"],//MXM 6.5 mm
            [20, "srifle_DMR_01_F"],//Rahim 7.62 mm
            [20, "srifle_DMR_02_F"],//MAR-10 .338 (Black)
            [20, "srifle_DMR_02_camo_F"],//MAR-10 .338 (Camo)
            [20, "srifle_DMR_02_sniper_F"],//MAR-10 .338 (Sand)
            [20, "srifle_DMR_03_F"],//Mk-I EMR 7.62 mm (Black)
            [20, "srifle_DMR_03_khaki_F"],//Mk-I EMR 7.62 mm (Khaki)
            [20, "srifle_DMR_03_tan_F"],//Mk-I EMR 7.62 mm (Sand)
            [20, "srifle_DMR_03_multicam_F"],//Mk-I EMR 7.62 mm (Camo
            [20, "srifle_DMR_03_woodland_F"],//Mk-I EMR 7.62 mm (Woodland)	
            [20, "srifle_DMR_04_F"],//ASP-1 Kir 12.7 mm (Black)
            [20, "srifle_DMR_04_Tan_F"],//ASP-1 Kir 12.7 mm (Tan)	
            [20, "srifle_DMR_05_blk_F"],//Cyrus 9.3 mm (Black)	
            [20, "srifle_DMR_05_hex_F"],//Cyrus 9.3 mm (Hex)	
            [20, "srifle_DMR_05_tan_f"],//Cyrus 9.3 mm (Tan)	
            [20, "srifle_DMR_06_camo_F"],//Mk14 7.62 mm (Camo)	
            [20, "srifle_DMR_06_olive_F"],//Mk14 7.62 mm (Olive)	
            [20, "arifle_SPAR_03_blk_F"],//
            [20, "arifle_SPAR_03_khk_F"],//
            [20, "arifle_SPAR_03_snd_F"]//
        ]
    ],
    ["Arma3_MarksmanRifle_Ammo", 
        [
            [15, "30Rnd_65x39_caseless_mag"],
            [15, "30Rnd_65x39_caseless_mag_Tracer"],
            [15, "10Rnd_338_Mag"],
            [15, "10Rnd_762x54_Mag"],
            [15, "20Rnd_762x51_Mag"],
            [15, "10Rnd_127x54_Mag"],
            [15, "10Rnd_93x64_DMR_05_Mag"]
        ]
    ],

    //Rifle
    ["Arma3_Rifle", 
        [
            [50, "srifle_EBR_F"],//Mk18 ABR 7.62 mm
            [50, "arifle_Katiba_F"],//Katiba 6.5 mm
            [50, "arifle_Katiba_C_F"],//Katiba Carbine 6.5 mm
            [50, "arifle_Katiba_GL_F"],//Katiba GL 6.5 mm
            [50, "arifle_Mk20_F"],//Mk20 5.56 mm (Camo)
            [50, "arifle_Mk20_plain_F"],//Mk20 5.56 mm
            [50, "arifle_Mk20C_F"],//Mk20C 5.56 mm (Camo)
            [50, "arifle_Mk20C_plain_F"],//Mk20C 5.56 mm
            [50, "arifle_Mk20_GL_F"],//Mk20 EGLM 5.56 mm (Camo)
            [50, "arifle_Mk20_GL_plain_F"],//Mk20 EGLM 5.56 mm
            [50, "arifle_MXC_F"],//MXC 6.5 mm
            [50, "arifle_MXC_khk_F"],//MXC 6.5 mm (Khaki)	
            [50, "arifle_MX_F"],//MX 6.5 mm
            [50, "arifle_MX_khk_F"],//MX 6.5 mm (Khaki)	
            [50, "arifle_MXM_F"],//MXM 6.5 mm
            [50, "arifle_MX_GL_F"],//MX 3GL 6.5 mm
            [50, "arifle_MX_GL_khk_F"],//MX 3GL 6.5 mm (Khaki)	
            [50, "arifle_SDAR_F"],//SDAR 5.56 mm
            [50, "arifle_TRG21_F"],//TRG-21 5.56 mm
            [50, "arifle_TRG20_F"],//TRG-20 5.56 mm
            [50, "arifle_TRG21_GL_F"],//TRG-21 EGLM 5.56 mm
            [50, "arifle_AK12_F"],//AK-12 7.62 mm	
            [50, "arifle_AK12_GL_F"],//AK-12 GL 7.62 mm	
            [50, "arifle_AKM_F"],//AKM 7.62 mm	
            [50, "arifle_AKM_FL_F"],//
            [50, "arifle_AKS_F"],//AKS-74U 5.45 mm	
            [50, "arifle_ARX_blk_F"],//Type 115 6.5 mm (Black)	
            [50, "arifle_ARX_ghex_F"],//
            [50, "arifle_ARX_hex_F"],//
            [50, "arifle_CTAR_blk_F"],//CAR-95 5.8 mm (Black)	
            [50, "arifle_CTAR_hex_F"],//
            [50, "arifle_CTAR_ghex_F"],//
            [50, "arifle_CTAR_GL_blk_F"],//
            [50, "arifle_CTAR_GL_hex_F"],//
            [50, "arifle_CTAR_GL_ghex_F"],//
            [50, "arifle_SPAR_01_blk_F"],//SPAR-16 5.56 mm (Black)	
            [50, "arifle_SPAR_01_khk_F"],//
            [50, "arifle_SPAR_01_snd_F"],//
            [50, "arifle_SPAR_01_GL_blk_F"],//
            [50, "arifle_SPAR_01_GL_khk_F"],//
            [50, "arifle_SPAR_01_GL_snd_F"]//
        ]
    ],
    ["Arma3_Rifle_Ammo", 
        [
            [40, "30Rnd_65x39_caseless_green"],
            [40, "30Rnd_65x39_caseless_green_mag_Tracer"],
            [40, "30Rnd_556x45_Stanag"],
            [40, "30Rnd_556x45_Stanag_Tracer_Red"],
            [40, "30Rnd_556x45_Stanag_Tracer_Green"],
            [40, "30Rnd_556x45_Stanag_Tracer_Yellow"],
            [40, "30Rnd_556x45_Stanag_red"],
            [40, "30Rnd_556x45_Stanag_green"],
            [40, "30Rnd_65x39_caseless_mag"],
            [40, "30Rnd_65x39_caseless_mag_Tracer"],
            [40, "10Rnd_338_Mag"],
            [40, "30Rnd_762x39_Mag_F"],//
            [40, "30Rnd_762x39_Mag_Green_F"],//
            [40, "30Rnd_762x39_Mag_Tracer_F"],//
            [40, "30Rnd_762x39_Mag_Tracer_Green_F"],
            [40, "10Rnd_50BW_Mag_F"],
            [40, "30Rnd_580x42_Mag_F"],
            [40, "30Rnd_580x42_Mag_Tracer_F"],
            [40, "20Rnd_556x45_UW_mag"],
            [40, "30Rnd_556x45_Stanag"],
            [40, "30Rnd_556x45_Stanag_Tracer_Red"],
            [40, "30Rnd_556x45_Stanag_Tracer_Green"],
            [40, "30Rnd_556x45_Stanag_Tracer_Yellow"],
            [40, "30Rnd_556x45_Stanag_green"],
            [40, "30Rnd_556x45_Stanag_red"]
        ]
    ],
    
    ["Arma3_GrenadeLauncher", 
        [
            [60, "1Rnd_HE_Grenade_shell"],
            [60, "UGL_FlareWhite_F"],
            [60, "UGL_FlareGreen_F"],
            [60, "UGL_FlareRed_F"],
            [60, "UGL_FlareYellow_F"],
            [60, "UGL_FlareCIR_F"],
            [60, "1Rnd_Smoke_Grenade_shell"],
            [60, "1Rnd_SmokeRed_Grenade_shell"],
            [60, "1Rnd_SmokeGreen_Grenade_shell"],
            [60, "1Rnd_SmokeYellow_Grenade_shell"],
            [60, "1Rnd_SmokePurple_Grenade_shell"],
            [60, "1Rnd_SmokeBlue_Grenade_shell"],
            [60, "1Rnd_SmokeOrange_Grenade_shell"],
            [60, "3Rnd_HE_Grenade_shell"],
            [60, "3Rnd_UGL_FlareWhite_F"],
            [60, "3Rnd_UGL_FlareGreen_F"],
            [60, "3Rnd_UGL_FlareRed_F"],
            [60, "3Rnd_UGL_FlareYellow_F"],
            [60, "3Rnd_UGL_FlareCIR_F"],
            [60, "3Rnd_Smoke_Grenade_shell"],
            [60, "3Rnd_SmokeRed_Grenade_shell"],
            [60, "3Rnd_SmokeGreen_Grenade_shell"],
            [60, "3Rnd_SmokeYellow_Grenade_shell"],
            [60, "3Rnd_SmokePurple_Grenade_shell"],
            [60, "3Rnd_SmokeBlue_Grenade_shell"],
            [60, "3Rnd_SmokeOrange_Grenade_shell"],
            [60, "6Rnd_GreenSignal_F"],
            [60, "6Rnd_RedSignal_F"]
        ]
    ],    
    
    

    ["Arma3_Submachine", 
        [
            [50, "hgun_PDW2000_F"],//PDW2000 9 mm
            [50, "SMG_01_F"],//Vermin SMG .45 ACP
            [50, "SMG_02_F"]//Sting 9 mm
        ]
    ],
    ["Arma3_Submachine_Ammo", 
        [
            [40, "30Rnd_9x21_Mag"],
            [40, "30Rnd_9x21_Red_Mag"],
            [40, "30Rnd_9x21_Yellow_Mag"],
            [40, "30Rnd_9x21_Green_Mag"],
            [40, "16Rnd_9x21_Mag"],
            [40, "16Rnd_9x21_red_Mag"],
            [40, "16Rnd_9x21_green_Mag"],
            [40, "16Rnd_9x21_yellow_Mag"],
            [40, "30Rnd_45ACP_Mag_SMG_01"],
            [40, "30Rnd_45ACP_Mag_SMG_01_tracer_green"],
            [40, "30Rnd_45ACP_Mag_SMG_01_Tracer_Red"],
            [40, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow"],
            [40, "30Rnd_9x21_Mag_SMG_02"],
            [40, "30Rnd_9x21_Mag_SMG_02_Tracer_Red"],
            [40, "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow"],
            [40, "30Rnd_9x21_Mag_SMG_02_Tracer_Green"]
        ]
    ],



    ["Arma3_LightMachine", 
        [
            [35, "LMG_Mk200_F"],//Mk200 6.5 mm
            [35, "LMG_Zafir_F"],//Zafir 7.62 mm
            [35, "arifle_MX_SW_F"],//MX SW 6.5 mm
            [35, "arifle_MX_SW_khk_F"],//MX SW 6.5 mm (Khaki)	
            [35, "MMG_01_hex_F"],//Navid 9.3 mm (Hex)	
            [35, "MMG_01_tan_F"],//Navid 9.3 mm (Tan)	
            [35, "MMG_02_camo_F"],//SPMG .338 (MTP)	
            [35, "MMG_02_black_F"],//SPMG .338 (Black)	
            [35, "MMG_02_sand_F"],//SPMG .338 (Sand)	
            [35, "arifle_CTARS_blk_F"],//CAR-95-1 5.8mm (Black)	
            [35, "arifle_CTARS_hex_F"],//
            [35, "arifle_CTARS_ghex_F"],//
            [35, "arifle_SPAR_02_blk_F"],//SPAR-16S 5.56 mm (Black)	
            [35, "arifle_SPAR_02_khk_F"],//
            [35, "arifle_SPAR_02_snd_F"]
        ]
    ],
    ["Arma3_LightMachine_Ammo", 
        [
            [30, "200Rnd_65x39_cased_Box"],
            [30, "200Rnd_65x39_cased_Box_Tracer"],
            [30, "150Rnd_762x54_Box"],
            [30, "150Rnd_762x54_Box_Tracer"],
            [30, "100Rnd_65x39_caseless_mag"],
            [30, "100Rnd_65x39_caseless_mag_Tracer"],
            [30, "200Rnd_65x39_belt_Tracer_Green"],
            [30, "200Rnd_65x39_belt_Tracer_Red"],
            [30, "200Rnd_65x39_belt_Tracer_Yellow"],
            [30, "150Rnd_93x64_Mag"],
            [30, "100Rnd_580x42_Mag_F"],
            [30, "100Rnd_580x42_Mag_Tracer_F"]
        ]
    ],
       

    ["Arma3_Sniper", 
        [
            [12, "srifle_GM6_F"],//	GM6 Lynx 12.7 mm
            [12, "srifle_GM6_camo_F"],//GM6 Lynx 12.7 mm (camo)
            [12, "srifle_LRR_F"],//M320 LRR .408
            [12, "srifle_LRR_camo_F"],//	M320 LRR .408 (Camo)
            [12, "srifle_LRR_tna_F"]//M320 LRR .408 (Tropic)	
        ]
    ],
    ["Arma3_Sniper_Ammo", 
        [
            [10, "5Rnd_127x108_Mag"],
            [10, "5Rnd_127x108_APDS_Mag"],
            [10, "7Rnd_408_Mag"]
        ]
    ],
    
    ["Arma3_Items", 
        [
            [90, "ItemWatch"],//	
            [90, "ItemCompass"],//
            [60, "ItemGPS"],//
            [90, "ItemRadio"],//
            [90, "ItemMap"],//
            [90, "Binocular"],//
            [50, "Rangefinder"],//
            [40, "NVGoggles"],//
            [50, "Laserdesignator"],//
            [50, "Laserbatteries"],//
            [90, "FirstAidKit"],//
            [90, "Medikit"],//
            [90, "ToolKit"],//
            [30, "NVGogglesB_blk_F"]//
        ]
    ],

    
    ["Arma3_Accessories", 
        [
            [50, "optic_ACO_grn"],
            [50, "optic_MRCO"],
            [50, "optic_SOS"],
            [50, "optic_DMS"],
            [50, "muzzle_snds_B"],
            [50, "optic_Arco"],
            [50, "acc_pointer_IR"],
            [50, "optic_Hamr"],
            [50, "muzzle_snds_acp"],
            [50, "muzzle_snds_L"],
            [50, "optic_MRD"],
            [50, "optic_Yorris"],
            [50, "optic_Arco_blk_F"],
            [50, "optic_Nightstalker"],
            [50, "muzzle_snds_H"],
            [50, "optic_Holosight"],
            [50, "optic_Holosight_smg"],
            [50, "optic_Aco_smg"],
            [50, "optic_ACO_grn_smg"],
            [50, "optic_LRPS"],
            [50, "optic_AMS_snd"],
            [50, "muzzle_snds_338_sand"],
            [50, "optic_KHS_blk"],
            [50, "muzzle_snds_93mmg"],
            [50, "optic_KHS_old"],
            [50, "optic_Holosight_khk_F"],
            [50, "optic_Hamr_khk_F"],
            [50, "muzzle_snds_H_khk_F"],
            [50, "optic_SOS_khk_F"],
            [50, "optic_LRPS_tna_F"],
            [50, "optic_LRPS_ghex_F"],
            [50, "muzzle_snds_65_TI_blk_F"],
            [50, "optic_ERCO_blk_F"],
            [50, "bipod_01_F_khk"],
            [50, "optic_Holosight_smg_blk_F"],
            [50, "muzzle_snds_B_snd_F"],
            [50, "muzzle_snds_B_khk_F"],
            [50, "muzzle_snds_65_TI_hex_F"],
            [50, "muzzle_snds_65_TI_ghex_F"],
            [50, "muzzle_snds_H_MG_blk_F"],
            [50, "muzzle_snds_H_MG_khk_F"],
            [50, "optic_Arco_ghex_F"],
            [50, "optic_DMS_ghex_F"],
            [50, "optic_ERCO_khk_F"],
            [50, "optic_ERCO_snd_F"],
            [50, "muzzle_snds_58_hex_F"],
            [50, "muzzle_snds_58_ghex_F"],
            [50, "muzzle_snds_58_wdm_F"],
            [50, "muzzle_snds_58_blk_F"],
            [50, "muzzle_snds_m_snd_F"],
            [50, "muzzle_snds_m_khk_F"],
            [50, "muzzle_snds_H_snd_F"]
        ]
    ]
];