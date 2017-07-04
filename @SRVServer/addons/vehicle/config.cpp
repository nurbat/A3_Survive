class CfgPatches
{
	class SRVVehicle
	{
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
			class postInit 			{ postInit = 1; };
			class preInit 			{ preInit = 1; };
			class debugMarker 		{};
			class loadVehicle 		{};
			class createRandom 		{};
			class createLocation 	{};
			class createRoad {};
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
			class createObject			{};
			class setPernament			{};
			class vehicleTracked		{};
			class setDamage				{};
		};
	};
};
