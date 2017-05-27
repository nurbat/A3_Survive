class CfgPatches
{
	class SRVDB
	{
		projectName="SQL";
		author="Hummer";
		version="";
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
			class queryBuild {};
		};
	};
};
