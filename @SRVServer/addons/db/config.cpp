class CfgPatches
{
	class SRVDB
	{
		projectName="SQL";
		author="Hummer";
		version="2017.4.15";
		requiredAddons[] = {};
		units[] = {};
	};
};

class CfgFunctions
{
	class SRVDB
	{
		class functions
		{
			file = "\db\functions";
			class async {};
			class loaded {};
			class preInit {preInit = 1;};
			class query {};
			class strip {};
		};
	};
};
