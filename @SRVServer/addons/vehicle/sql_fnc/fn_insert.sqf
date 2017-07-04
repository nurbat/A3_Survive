/*
 * Arguments:
 * 0: Owner <STRING >
 * 1: Vehicle <OBJECT>
 *
 * Return Value:
 * None
 *
*/
params ["_vehicle"];

if (_vehicle getVariable["uid", ""] isEqualTo "") exitWith { };

["INSERT INTO vehicle SET",
    [
        ["name",        _vehicle getVariable["owner", ""]],
        ["class",       typeOf _vehicle],
        ["is_locked",   locked _vehicle],
        ["fuel",        fuel _vehicle],
        ["damage",      damage _vehicle],
        ["cargo",       _vehicle Call SRVTools_fnc_getVehicleCargo],
        ["hitpoints",   _vehicle Call SRVTools_fnc_getPointsDamage],
        ["position",    (getPosATL _vehicle)],
        ["direction",   [vectorDir _vehicle, vectorUp _vehicle]],
        ["ammo",        _vehicle Call SRVTools_fnc_getVehicleAmmo],
        ["id",         _vehicle getVariable["uid", ""]]
    ]
] Call SRVDB_fnc_queryBuild;