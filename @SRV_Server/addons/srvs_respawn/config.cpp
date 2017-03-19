class CfgPatches
{
	class SRVRespawn
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
	class srvs_respawn
	{
		class system
		{
			file = "\srvs_respawn\system";
			class preInit {preInit = 1;};
		};
	};
};
