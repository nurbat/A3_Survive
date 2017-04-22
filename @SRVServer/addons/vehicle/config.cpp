class CfgPatches
{
	class SRVVehicle
	{
		projectName="Vehicle";
		author="Hummer";
		version="2017.4.15";
		requiredAddons[] = { "SRVCore", "SRVDB" };				
	};
};

class CfgFunctions
{
	class SRVVehicle
	{
		class fnc
		{
			file = "\vehicle\functions";
			class getVehicleTracker {};
			class setVehicleTracker {};
			class createVehicle {};
			class objectCreate {};
			class applyPersist {};
			class preInit { preInit = 1; };
			class loadVehicle { postInit = 1; };
			class spawnVehiclesRandom { };
			class spawnVehiclesRoad { };
			class spawnVehiclesLocation { };
		};
		class sql_fnc
		{
			file = "\vehicle\sql_fnc";
			class delete {};
			class insert {};
			class load {};
			class update {};
		};
	};
};
