{
	if !(isPlayer _x) then
	{
		deleteVehicle _x;
	};
} forEach playableUnits;

diag_log format["================="];
diag_log format["CORE LOAD MODULE"];
diag_log format["================="];
