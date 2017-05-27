/*
 * Arguments:
 * 0: Owner <STRING >
 * 1: Class <STRING>
 * 2: Position <ARRAY>
 * 3: DirAndUp <ARRAY> _vehicleDirection OR [_vehicleDirection, _vehicleUp] (OPTIONAL)
 * 4: UID <STRING> Insert on SQL ? (OPTIONAL) TRUE
 *
 * Return Value:
 * 0: Vehicle <OBJECT>
 *
*/
params["_ownerName", "_vehicleClass", "_vehiclePosition", "_vehicleDirection", "_UID"];
if(isNil "_vehicleDirection") then { _vehicleDirection = (random 360); };

private _SRVVehicle_var_uid = "";
private _SRVVehicle_var_object = [_vehicleClass, _vehiclePosition, _vehicleDirection] Call SRVVehicle_fnc_createVehicle;

if(isNil "_UID") then { _SRVVehicle_var_uid = [_ownerName, _SRVVehicle_var_object] Call SRVVehicle_fnc_insert; }
else { _SRVVehicle_var_uid = _UID; };

if(_SRVVehicle_var_uid == "") exitWith { false };
_SRVVehicle_var_object setVariable["UID",           _SRVVehicle_var_uid, true];
_SRVVehicle_var_object setVariable["OWNER",         _ownerName, true];
_SRVVehicle_var_object setVariable["IsPersistent",  true, true];
_SRVVehicle_var_object addEventHandler ["GetOut", { (_this select 0) call SRVVehicle_fnc_update}];
_SRVVehicle_var_object