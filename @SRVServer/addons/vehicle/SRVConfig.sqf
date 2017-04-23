//DebugLevel
//0 - Level (Disable)
//1 - Level (Set Callback)
//2 - Level (Get Callback / Set Callback) / Markers
//3 - Level (Get Callback / Set Callback / Module Callback)

SRVVehicle_DebugLevel = 1;

SRVVehicle_spawnRadius = [7000, 7000, 7000];//[CenterX, CenterY, Radius]

//-----------------------------
SRVVehicle_disableVehicleNVGGlobal = false; //Отключает пнв
SRVVehicle_disableVehicleThermalGlobal = false; //Отключает тепловизор
//==========================
SRVVehicle_disableVehicleThermal = []; //Отключает тепловизор на выбранной технике
SRVVehicle_disableVehicleNVG = []; //Отключает пнв на выбранной технике

//Спавн техники по установленной точке
SRVVehicle_locationRadiusSpawn = 50;
SRVVehicle_vehiclesLocation = [
	//[CountMax, "ID Tag", ["Class1", "Class2"],    [DamageMin, DamageMax], [FuelLevel, AmmoLevel],	PersistBool, [Location1, Location2]],
	//[CountMax, "ID Tag", ["Class1", "Class2"],    Damage, 				[FuelLevel, AmmoLevel],	PersistBool, [Location1, Location2]]

];

//Спавн техники возле дороги
SRVVehicle_roadRadiusSpawn = 20;
SRVVehicle_vehiclesRandomRoad = [
	//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], 	[FuelLevel, AmmoLevel], PersistBool],
	//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, 					[FuelLevel, AmmoLevel], PersistBool]
];

//Спавн техники рандомно на карте
SRVVehicle_vehiclesRandom = [
	[50, "Bike", ["B_Quadbike_01_F"], 0, [100, 0], true]
	//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], 	[FuelLevel, AmmoLevel], PersistBool],
	//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, 					[FuelLevel, AmmoLevel], PersistBool]
];