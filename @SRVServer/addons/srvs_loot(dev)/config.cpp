class CfgPatches
{
	class SRVLoot
	{
		projectName="Loot Manager";
		author="Hummer";
		version="2017.3.22";
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
		};
	};
};

class SRVConfig
{
	class SRVLoot
	{
		countLoot = [1, 5]; //[min, max] point spawn loot
		lootLife = 1800; // 60 * 30 min = 1800
		#include "Loot_Buildings.cpp"	
		#include "Loot_Type_Buildings.cpp"	
	};

};