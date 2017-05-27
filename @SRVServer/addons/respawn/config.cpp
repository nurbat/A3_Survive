class CfgPatches
{
	class SRVRespawn
	{
		projectName="Respawn";
		author="Hummer";
		version="2017.4.15";
		requiredAddons[] = { "SRVCore", "SRVDB" };
		units[] = {};
	};
};

class CfgFunctions
{
	class SRVRespawn
	{
		class client
		{
			file = "\respawn\client";
			class loadScreen {};
			class connected {};
		}
		class fnc
		{
			file = "\respawn\fnc";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
			class playerKilled {};
			class loadPlayer {};
			class createPlayer {};
			class initialize {};
			class isLoading {};
			class updatePlayer {};
			class isDisconnected {};
			class clearInventory {};
		};
		class sql
		{
			file = "\respawn\sql_fnc";
			class create {};
			class delete {};
			class existPlayer {};
			class load {};
			class update {};
		};
	};
};
