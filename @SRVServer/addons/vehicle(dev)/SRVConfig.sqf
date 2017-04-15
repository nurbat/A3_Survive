//DebugLevel
//0 - Level (Disable)
//1 - Level (Set Callback)
//2 - Level (Get Callback / Set Callback) / Markers
//3 - Level (Get Callback / Set Callback / Module Callback)

DebugLevel = 3;

spawnRadius [0, 0, 1500];//[CenterX, CenterY, Radius]

//-----------------------------
disableVehicleNVGGlobal = false; //Отключает пнв
disableVehicleThermalGlobal = false; //Отключает тепловизор
//==========================
disableVehicleThermal = []; //Отключает тепловизор на выбранной технике
disableVehicleNVG = []; //Отключает пнв на выбранной технике
weaponBlacklist = []; //Отключает оружие на технике
ammoBlacklist = []; //Уберает патроны для оружия из техники

//---------------
disableRearm = false;
//Пополние боезапаса
rearmSystemActive = false;
rearmGroundDistance = 10;
rearmAirDistance = 20;
RearmTime = 15;                 //15 second for Full rearm 1 weapon

//------------------
disableRefuel = false;
//Скорость заправки
refuelSystemActive = false;         
refuelGroundSpeed = 3;				// 3 liters/second (for ground vehicles, small tank)
RefuelGroundDistance = 5;
refuelAirSpeed = 20;		        // 20 liters/second (for air vehicles, big tank so need to be faster)
RefuelAirDistance = 5;

//Состояние топлива и вооружения
vehiclesFuelPercent = 0;
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
	//[CountMax, "ID Tag", ["Class1", "Class2"], [DamageMin, DamageMax], PersistBool],
	//[CountMax, "ID Tag", ["Class1", "Class2"], Damage, PersistBool]
];