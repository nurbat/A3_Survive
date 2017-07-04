/*
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * None
 *
 */
params["_vehicle"];

if(_vehicle getVariable["uid", ""] == "") exitWith { };

["UPDATE vehicle SET",
    [
        ["name",        _vehicle getVariable["owner", ""]],
        ["class",       typeOf _vehicle],
        ["is_locked",   locked _vehicle],
        ["fuel",        fuel _vehicle],
        ["damage",      damage _vehicle],
        ["hitpoints",   _vehicle Call SRVTools_fnc_getPointsDamage],
        ["position",    (getPosATL _vehicle)],
        ["direction",   [vectorDir _vehicle, vectorUp _vehicle]],
        ["cargo",       _vehicle Call SRVTools_fnc_getVehicleCargo],
        ["ammo",        _vehicle Call SRVTools_fnc_getVehicleAmmo],
        ["WHERE id",   _SRVVehicle_var_uid]
    ], 2
] Call SRVDB_fnc_queryBuild;