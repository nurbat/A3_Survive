class CfgPatches
{
	class SurvariumRespawn
	{
		projectName="Survarium Mode";
		author="Hummer";
		version="0.001";
		requiredAddons[] = {};
		units[] = {};
	};
};

class CfgFunctions
{
	class survarium_respawn
	{
		class system
		{
			file = "\survarium_respawn\system";
			class preInit {preInit = 1;};
		};
	};
};
