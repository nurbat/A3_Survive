class CfgPatches
{
	class SRVVehicleLock
	{
		projectName="Vehicle Lock";
		author="Hummer";
		version="";
		requiredAddons[] = { "SRVVehicle", "SRVTools" };				
	};
};

class CfgFunctions
{
	class SRVVehicleLock
	{
		class until
		{
			file = "\vehicle_lock\until";
			class deleteVehicleKeys	{};
			class getVehicleKeys	{};
			class hasKeyForVehicle	{};
			class writeVehicleKeys	{};
			class setVehicleKeyCargo{};
			
		}
		class fnc
		{
			file = "\vehicle_lock\fnc";
			class preInit 	{	preInit = 1;	}
		};
		class sql_fnc
		{
			file = "\vehicle_lock\sql_fnc";
		};
	};
};
