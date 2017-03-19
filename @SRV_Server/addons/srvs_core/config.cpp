class CfgPatches
{
	class SRVCore
	{
		projectName="Survarium Mode";
		author="Hummer";
		version="0.001";
		requiredAddons[] = { "SRVDB" };
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_core
	{
		class system
		{
			file = "\srvs_core\system";
			class preInit {preInit = 1;};
		};
	};
};
