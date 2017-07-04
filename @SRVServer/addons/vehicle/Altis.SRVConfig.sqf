//DEBUG
SRVVehicle_cfg_DebugLevel = 2;
SRVVehicle_cfg_markerCreated = true;
SRVVehicle_cfg_markerLoaded = true;

//-----------------------------
SRVVehicle_cfg_NVGGlobal = false; //Отключает пнв
SRVVehicle_cfg_ThermalGlobal = false; //Отключает тепловизор
//==========================
SRVVehicle_cfg_Thermal = []; //Отключает тепловизор на выбранной технике
SRVVehicle_cfg_NVG = []; //Отключает пнв на выбранной технике

//Spawn vehicle a road
//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], 	[FuelLevel, AmmoLevel], isPernament = true],
//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, 					[FuelLevel, AmmoLevel], isPernament = true]
SRVVehicle_cfg_RoadRadius = 20;
SRVVehicle_cfg_Road = [

];

//SpawnToLocation
//[CountMax, "ID Tag", ["Class1", "Class2"],    [DamageMin, DamageMax], [FuelLevel, AmmoLevel], [Location1, Location2], isPernament = true],
//[CountMax, "ID Tag", ["Class1", "Class2"],    Damage, 				[FuelLevel, AmmoLevel], [Location1, Location2], isPernament = true]
SRVVehicle_cfg_LocationRadius = 50;
SRVVehicle_cfg_Location = [

];

//RandomSpawnVehicle
SRVVehicle_cfg_RandomCenter = [16640, 16497];//Chernarus = [7000, 7000];
SRVVehicle_cfg_RandomRadius = 14000;//Chernarus = 7000;
//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], 	[FuelLevel, AmmoLevel], isPernament = true]
//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, 					[FuelLevel, AmmoLevel], isPernament = true]
SRVVehicle_cfg_Random = [
	[50, "Bike", 		["B_Quadbike_01_F"], 			0, [100, 0], false],
	[30, "Offroad", 	["C_Offroad_01_F"], 			0, [100, 0]],
	[10, "Helicopert", 	["C_Heli_Light_01_civil_F"], 	0, [100, 0]]
];