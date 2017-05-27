class CfgPatches
{
	class SRVCore
	{
		projectName="Core";
		author="Hummer";
		version="";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class SRVCore
	{
		class cron
		{
			file = "\server_core\cron";
			class createJob		{};
			class deleteJob		{};
		};
		class eventHandler
		{
			file = "\server_core\event\handlers";
			class eventNpcKilled 		{};
			class eventPlayerKilled 	{};
			class eventVehicleKilled 	{};	
			class eventCreateLocal		{};	
		};
		class event
		{
			file = "\server_core\event";
			class runEvent {};
			class createEvent {};
		};
		class functions
		{
			file = "\server_core\functions";
			class preInit {preInit = 1;};
			class postInit {postInit = 1;};
			class execCommand {};
			class loadModule {};
			class serverLock {};
		};
	};
};
