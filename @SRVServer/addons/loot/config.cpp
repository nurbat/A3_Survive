class CfgPatches
{
	class SRVLoot
	{
		projectName="Loot Manager";
		author="Hummer";
		version="2017.4.15";
		requiredAddons[] = { "SRVCore" };
		units[] = {};
	};
};

class CfgFunctions
{
	class SRVLoot
	{
		class start
		{
			file = "\loot\functions";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
			class calculate {};
			class connected {};
			class initPlayer {};
			class request {};
		};
	};
};

