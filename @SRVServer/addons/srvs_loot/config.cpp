class CfgPatches
{
	class SrvLoot
	{
		projectName="Loot Manager";
		author="Hummer";
		version="2017.4.16";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_loot
	{
		class start
		{
			file = "\srvs_loot\start";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
		};
	};
};

