class CfgPatches
{
	class SRVDB
	{
		requiredAddons[] = {};
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
