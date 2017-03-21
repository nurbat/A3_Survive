class CfgPatches
{
	class SRVUtil
	{
		projectName="Utils";
		author="Hummer";
		version="2017.22.3";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_util
	{
		class start
		{
			file = "\srvs_util\start";
			class preInit {preInit = 1;};
		};
	};
};
