class CfgPatches
{
	class SRVRespawn
	{
		projectName="Respawn";
		author="Hummer";
		version="2017.3.22";
		requiredAddons[] = {};
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_respawn
	{
		class start
		{
			file = "\srvs_respawn\start";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
		};
	};
};
