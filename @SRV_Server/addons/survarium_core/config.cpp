class CfgPatches
{
	class SurvariumCore
	{
		projectName="Survarium Mode";
		author="Hummer";
		version="0.001";
		requiredAddons[] = { "SurvariumDB" };
		units[] = {};
	};
};

class CfgFunctions
{
	class survarium_core
	{
		class system
		{
			file = "\survarium_core\system";
			class preInit {preInit = 1;};
		};
	};
};
