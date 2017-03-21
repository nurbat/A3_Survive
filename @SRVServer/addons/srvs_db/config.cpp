class CfgPatches
{
	class SRVDB
	{
		projectName="SQL";
		author="Hummer";
		version="2017.3.22";
		requiredAddons[] = {};
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_db
	{
		class start
		{
			file = "\srvs_db\start";
			class preInit {preInit = 1;};
		};
	};
};
