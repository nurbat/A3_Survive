class CfgPatches
{
	class SRVDB
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
	class srvs_db
	{
		class system
		{
			file = "\srvs_db\system";
			class preInit {preInit = 1;};
		};
	};
};
