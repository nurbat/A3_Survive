class CfgPatches
{
	class SRVVehicle
	{
		projectName="Vehicle";
		author="Hummer";
		version="";
		requiredAddons[] = { "SRVCore", "SRVTools", "SRVDB" };				
	};
};

class CfgFunctions
{
	class SRVVehicle
	{
		class fnc
		{
			file = "\vehicle\fnc";
			class getVehicleTracker {};
			class setVehicleTracker {};
			class createNonPersistentVehicle {};
			class createVehicle {};
			class createPersistentVehicle {};
			class postInit { postInit = 1; };
			class preInit { preInit = 1; };
			class loadVehicle { };
			class spawnVehiclesRandom { };
			class spawnVehiclesRoad { };
			class spawnVehiclesLocation { };
		};
		class sql_fnc
		{
			file = "\vehicle\sql_fnc";
			class delete {};
			class insert {};
			class update {};
			class load 	 {};
		};
		class until
		{
			file = "\vehicle\until";
			class vehicleGetHitPoints {};
		};
	};
};
