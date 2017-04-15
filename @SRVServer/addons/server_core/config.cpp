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
		};
	};
};
