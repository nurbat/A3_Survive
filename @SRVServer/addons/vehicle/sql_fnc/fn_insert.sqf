/*
 * Arguments:
 * 0: Owner <STRING >
 * 1: Vehicle <OBJECT>
 *
 * Return Value:
 * 0: UID <STRING>
 *
*/
params ["_vehicleOwner", "_vehicleObject"];

if(_vehicleObject getVariable["UID", ""] != "") exitWith { };
private _SRVVehicle_var_uid = Call SRVTools_fnc_UID;

["INSERT INTO vehicle SET",
    [
        ["name",        _vehicleOwner],
        ["class",       typeOf _vehicleObject],
        ["is_locked",   locked _vehicleObject],
        ["fuel",        fuel _vehicleObject],
        ["damage",      damage _vehicleObject],
        ["cargo",       _vehicleObject Call SRVTools_fnc_getVehicleCargo],
        ["hitpoints",   _vehicleObject Call SRVTools_fnc_getPointsDamage],
        ["position",    (getPosATL _vehicleObject)],
        ["direction",   [vectorDir _vehicleObject, vectorUp _vehicleObject]],
        ["ammo",        _vehicleObject Call SRVTools_fnc_getVehicleAmmo],
        ["uid",         _SRVVehicle_var_uid]
    ]
] Call SRVDB_fnc_queryBuild;
_SRVVehicle_var_uid;