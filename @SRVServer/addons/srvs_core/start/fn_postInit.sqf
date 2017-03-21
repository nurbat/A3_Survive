{
	if !(isPlayer _x) then
	{
		deleteVehicle _x;
	};
} forEach playableUnits;