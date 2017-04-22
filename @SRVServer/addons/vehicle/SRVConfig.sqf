//DebugLevel
//0 - Level (Disable)
//1 - Level (Set Callback)
//2 - Level (Get Callback / Set Callback) / Markers
//3 - Level (Get Callback / Set Callback / Module Callback)

DebugLevel = 1;

spawnRadius = [7000, 7000, 7000];//[CenterX, CenterY, Radius]

//-----------------------------
disableVehicleNVGGlobal = false; //Отключает пнв
disableVehicleThermalGlobal = false; //Отключает тепловизор
//==========================
disableVehicleThermal = []; //Отключает тепловизор на выбранной технике
disableVehicleNVG = []; //Отключает пнв на выбранной технике

//Состояние топлива и вооружения
vehiclesFuelPercent = 100;
vehiclesAmmoPercent = 0;

//Спавн техники по установленной точке
locationRadiusSpawn = 50;
vehiclesLocation = [
	//[CountMax, "ID Tag", ["Class1", "Class2"],    [DamageMin, DamageMax],    PersistBool, [Location1, Location2]],
	//[CountMax, "ID Tag", ["Class1", "Class2"],    Damage,                    PersistBool, [Location1, Location2]]

];

//Спавн техники возле дороги
roadRadiusSpawn = 20;
vehiclesRandomRoad = [
	//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], PersistBool],
	//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, PersistBool]
];

//Спавн техники рандомно на карте
vehiclesRandom = [
	[50, "Bike", ["B_Quadbike_01_F"], 0, true]
	//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], PersistBool],
	//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, PersistBool]
];