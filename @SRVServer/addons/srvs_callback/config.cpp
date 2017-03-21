class CfgPatches
{
	class SRVCallback
	{
		projectName="Callback";
		author="Hummer";
		version="2017.3.22";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_callback
	{
		class start
		{
			file = "\srvs_callback\start";
			class preInit {preInit = 1;};
		};
	};
};
