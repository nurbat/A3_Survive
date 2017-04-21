class CfgPatches
{
	class SRVRespawn
	{
		projectName="Respawn";
		author="Hummer";
		version="2017.4.15";
		requiredAddons[] = { "SRVCore", "SRVDB", "SRVCall" };
		units[] = {};
	};
};

class CfgFunctions
{
	class SRVRespawn
	{
		class functions
		{
			file = "\respawn\functions";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
			class connected {};
			class createBambi {};
			class died {};
			class disconnect {};
			class equip {};
			class init {};
			class load_user {};
			class screen {};
		};
		class util
		{
			file = "\respawn\util";
			class getMagazine {};
			class getLoadedMagazines {};
			class getCargo {};
		};
		class sql
		{
			file = "\respawn\sql_fnc";
			class create {};
			class delete {};
			class exist {};
			class load {};
			class update {};
		};
	};
};
