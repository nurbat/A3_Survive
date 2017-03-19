class CfgPatches
{
	class FixDisconnect {
		requiredAddons[] = {};
		requiredVersion = 0.1;
		units[] = {};
		weapons[] = {};
	};
};
class CfgFunctions {
	class FixDisconnect {
		tag = "FixDisconnect";
		class Actions {
			file = "fixdisconnect";
			class doTheFix {
				preInit = 1;
			};
		};
	};
};