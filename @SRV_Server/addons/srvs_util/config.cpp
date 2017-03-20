class CfgPatches
{
	class SRVUtil
	{
		projectName="Survarium Mode";
		author="Hummer";
		version="0.001";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_util
	{
		class system
		{
			file = "\srvs_util\system";
			class preInit {preInit = 1;};
		};
	};
};
