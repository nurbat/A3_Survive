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
		class init
		{
			file = "\vehicle\functions";
			class preInit {preInit = 1;};
			class spawnVehiclesRandom {};
			class createVehicle {};
			class objectCreate {};
		};
	};
};
