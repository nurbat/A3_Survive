class CfgPatches
{
	class SurvariumClient
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
	class survarium_client
	{
		class system
		{
			file = "\survarium_client";
			class preInit {preInit = 1;};
		};
	};
};
