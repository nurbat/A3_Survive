//DebugLevel
//0 - Level (Disable)
//1 - Level (Set Callback)
//2 - Level (Get Callback / Set Callback) / Markers
//3 - Level (Get Callback / Set Callback / Module Callback)

SRVVehicle_cfg_DebugLevel = 2;

//Chernarus = [7000, 7000, 7000];
SRVVehicle_cfg_spawnRadius = [16640.236, 16497.094, 14000];//[CenterX, CenterY, Radius]

SRVVehicle_cfg_defaultFuel = 100;
SRVVehicle_cfg_defaultAmmo = 100;
SRVVehicle_cfg_defaultDamage = 0;

//-----------------------------
SRVVehicle_cfg_NVGGlobal = false; //Отключает пнв
SRVVehicle_cfg_ThermalGlobal = false; //Отключает тепловизор
//==========================
SRVVehicle_cfg_Thermal = []; //Отключает тепловизор на выбранной технике
SRVVehicle_cfg_NVG = []; //Отключает пнв на выбранной технике

//Спавн техники по установленной точке
SRVVehicle_cfg_locationRadiusSpawn = 50;
SRVVehicle_cfg_Location = [
	//[CountMax, "ID Tag", ["Class1", "Class2"],    [DamageMin, DamageMax], [FuelLevel, AmmoLevel],	PersistBool, [Location1, Location2]],
	//[CountMax, "ID Tag", ["Class1", "Class2"],    Damage, 				[FuelLevel, AmmoLevel],	PersistBool, [Location1, Location2]]

];

//Спавн техники возле дороги
SRVVehicle_cfg_roadRadiusSpawn = 20;
SRVVehicle_cfg_RandomRoad = [
	//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], 	[FuelLevel, AmmoLevel], PersistBool],
	//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, 					[FuelLevel, AmmoLevel], PersistBool]
];

//Спавн техники рандомно на карте
SRVVehicle_cfg_Random = [
	[100, "Bike", ["B_Quadbike_01_F"], 0, [100, 0], true]
	//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], 	[FuelLevel, AmmoLevel], PersistBool],
	//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, 					[FuelLevel, AmmoLevel], PersistBool]
];