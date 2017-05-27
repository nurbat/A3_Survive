/*
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * None
 *
 */
params["_vehicleObject"];

if(_vehicleObject getVariable["UID", ""] == "") exitWith { };

["UPDATE vehicle SET",
    [
        ["name",        _vehicleOwner],
        ["class",       typeOf _vehicleObject],
        ["is_locked",   locked _vehicleObject],
        ["fuel",        fuel _vehicleObject],
        ["damage",      damage _vehicleObject],
        ["hitpoints",   _vehicleObject Call SRVTools_fnc_getPointsDamage],
        ["position",    (getPosATL _vehicleObject)],
        ["direction",   [vectorDir _vehicleObject, vectorUp _vehicleObject]],
        ["cargo",       _vehicleObject Call SRVTools_fnc_getVehicleCargo],
        ["ammo",        _vehicleObject Call SRVTools_fnc_getVehicleAmmo],
        ["WHERE uid",   _SRVVehicle_var_uid]
    ], 2
] Call SRVDB_fnc_queryBuild;