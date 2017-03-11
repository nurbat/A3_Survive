class CfgPatches
{
	class SurvariumDB
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
	class survarium_db
	{
		class system
		{
			file = "\survarium_db\system";
			class preInit {preInit = 1;};
		};
	};
};
