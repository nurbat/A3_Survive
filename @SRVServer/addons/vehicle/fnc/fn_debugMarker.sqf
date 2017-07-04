if (SRVVehicle_cfg_markerLoaded) then
{
	{
		SRVVehicle_var_vehicleCount = SRVVehicle_var_vehicleCount + 1;
		_debugMarker = createMarker ["vehicleMarker#"+str SRVVehicle_var_vehicleCount, _x];
		_debugMarker setMarkerColor "ColorOrange";
		_debugMarker setMarkerType "mil_dot_noShadow";
	} forEach SRVVehicle_var_vehicleLoaded;
};

if (SRVVehicle_cfg_markerCreated) then
{
	{
		SRVVehicle_var_vehicleCount = SRVVehicle_var_vehicleCount + 1;
		_debugMarker = createMarker ["vehicleMarker#"+str SRVVehicle_var_vehicleCount, _x];
		_debugMarker setMarkerColor "ColorOrange";
		_debugMarker setMarkerType "mil_dot_noShadow";
	} forEach SRVVehicle_var_vehicleCreated;
};