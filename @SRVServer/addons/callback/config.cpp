class CfgPatches
{
	class SRVCall
	{
		projectName="Callback";
		author="Hummer";
		version="2017.4.15";
		requiredAddons[] = { "SRVCore" };				
	};
};

class CfgFunctions
{
	class SRVCall
	{
		class getCallback 
		{
			file = "\callback\functions\getCallback";
			class buildingChanged {};
			class entityKilled {};
			class vehicleKilled {};
			class playerKilled {};
			class entityRespawned {};
			class handleDisconnect {};
			class playerConnected {};
		}
		class setCallback 
		{
			file = "\callback\functions\setCallback";
			class setBuildingChanged {};
			class setEntityKilled {};
			class setVehicleKilled {};
			class setPlayerKilled {};
			class setEntityRespawned {};
			class setHandleDisconnect {};
			class setPlayerConnected {};
		}	
		class init
		{
			file = "\callback\functions";
			class preInit {preInit = 1;};
		};
	};
};
