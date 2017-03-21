class CfgPatches
{
	class SRVCore
	{
		projectName="Core";
		author="Hummer";
		version="2017.3.22";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_core
	{
		class start
		{
			file = "\srvs_core\start";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
		};
	};
};
