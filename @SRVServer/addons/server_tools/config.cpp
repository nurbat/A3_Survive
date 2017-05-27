class CfgPatches
{
	class SRVTools
	{
		projectName="Tools";
		author="Hummer";
		version="";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class SRVTools
	{
		class entity
		{
			file = "\server_tools\entity";
			class getPointsDamage 	{};
			class setPointsDamage 	{};
		};
		class player
		{
			file = "\server_tools\entity\player";
			class getPlayerCargo 	{};
			class getPlayerWeapons 	{};
			class setPlayerWeapons 	{};
			class setPlayerCargo 	{};
			class setPlayerEquip	{};
		}
		class vehicle
		{
			file = "\server_tools\entity\vehicle";
			class getVehicleAmmo 	{};
			class setVehicleAmmo 	{};
			class getVehicleCargo	{};
			class setVehicleCargo	{};
		}
		class fnc
		{
			file = "\server_tools\fnc";
			class setItemCargo 		{};
			class getItemCargo 		{};
			class getEveryContainer 	{};
			class setEveryContainer 	{};
			class setWeaponsItemsCargo 	{};
			class circle {};
			class itemType {};
			class findRoadPosition {};
			class setMagazinesAmmoCargo {};
			class UID {};
			class validUID {};
		};
	};
};
