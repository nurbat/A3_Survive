class CfgPatches
{
	class SRVCore
	{
		projectName="Core";
		author="Hummer";
		version="2017.4.15";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class SRVCore
	{
		class default
		{
			file = "\server_core\default";
			class setItemCargo {};
			class getItemCargo {};
			
			class setEveryContainer {};
			class getEveryContainer {};

			class getVehicleAmmo {};
			class setVehicleAmmo {};
		}
		class functions
		{
			file = "\server_core\functions";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
			class circle {};
			class execClient {};
			class execServer {};
			class getCargo {};
			class getHitPoint {};
			class getLoadedMagazines {};
			class getMagazine {};
			class itemType {};
			class randomize {};
			class vehicleGetHitPoints {};
			class findRoadPosition {};

			class setWeaponsItemsCargo {};
			class setMagazinesAmmoCargo {};
		};
	};
};
