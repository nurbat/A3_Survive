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
		class cargo
		{
			file = "\server_core\cargo";
			class setItemCargo {};
			class getItemCargo {};
			
			class getEveryContainer {};
			class setEveryContainer {};

			class getVehicleAmmo {};
			class setVehicleAmmo {};
			
			class setWeaponsItemsCargo {};
		};
		class server
		{
			file = "\server_core\server";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
			class execClient {};
			class execServer {};
		};
		class functions
		{
			file = "\server_core\functions";
			class circle {};
			class itemType {};
			class vehicleGetHitPoints {};
			class findRoadPosition {};
			class setMagazinesAmmoCargo {};

			class getAllHitPointsDamage {};
			class setAllHitPointsDamage {};
		};
	};
};
