/*
 * Arguments:
 * 0: Class <STRING>
 * 1: Position <ARRAY>
 * 2: DirAndUp <ARRAY> _vehicleDirection OR [_vehicleDirection, _vehicleUp]
 * 3: Options <ARRAY> [DAMAGE, FUEL, AMMO]
 *
 * Return Value:
 * 0: Vehicle <OBJECT>
 *
*/
params["_vehicleClass", "_vehiclePosition", "_vehicleDirAndUp"];

private _SRVVehicle_var_object = createVehicle [_vehicleClass, _vehiclePosition, [], 0, "CAN_COLLIDE"];
//CLEAR
clearBackpackCargoGlobal    _SRVVehicle_var_object;
clearItemCargoGlobal        _SRVVehicle_var_object;
clearMagazineCargoGlobal    _SRVVehicle_var_object;
clearWeaponCargoGlobal      _SRVVehicle_var_object;

//POSITION
if ((typeName _vehicleDirAndUp) isEqualTo "ARRAY") then { _SRVVehicle_var_object setVectorDirAndUp _vehicleDirAndUp; }
else { _SRVVehicle_var_object setDir _vehicleDirAndUp; };
_SRVVehicle_var_object setPosATL _vehiclePosition;
//END POSITION

if (_vehicleClass in SRVVehicle_cfg_NVG or SRVVehicle_cfg_NVGGlobal) then { _SRVVehicle_var_object disableNVGEquipment true; };
if (_vehicleClass in SRVVehicle_cfg_Thermal or SRVVehicle_cfg_ThermalGlobal) then { _SRVVehicle_var_object disableTIEquipment true; };

// Add a debug marker
if (SRVVehicle_cfg_DebugLevel > 1) then
{
	SRVVehicle_vehicleLocationCount = SRVVehicle_vehicleLocationCount + 1;
	_debugMarker = createMarker ["vehicleMarker#"+str SRVVehicle_vehicleLocationCount, _SRVVehicle_var_object];
	_debugMarker setMarkerColor "ColorOrange";
	_debugMarker setMarkerType "mil_dot_noShadow";
};

_SRVVehicle_var_object