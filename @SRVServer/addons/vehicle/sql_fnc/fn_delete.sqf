/*
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * None
 *
 */
params ["_vehicleObject"];
private _SRVVehicle_var_uid = (_vehicleObject getVariable["uid", ""]);

if(_SRVVehicle_var_uid == "") exitWith { };
["DELETE FROM vehicle WHERE",
    [
        ["id", _SRVVehicle_var_uid]
    ]
] call SRVDB_fnc_queryBuild;

_vehicleObject setVariable["UID", "", true];
_vehicleObject setVariable["OWNER", "", true];
_vehicleObject setVariable["IsPersistent", false, true];
_vehicleObject removeAllEventHandlers "GetOut";