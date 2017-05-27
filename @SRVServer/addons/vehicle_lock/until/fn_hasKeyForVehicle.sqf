/*
 * Arguments:
 * 0: Player <OBJECT>
 * 1: Vehicle <OBJECT>
 *
 * Return Value:
 * 0: Exist <BOOL>
 *
 * Example:
 * car call SRVVehicleLock_fnc_hasKeyForVehicle;
 *
 */
private["_return"];
params["_player", "_vehicle"];
_return = false;
{
    if(_x in (magazinesDetail _player)) exitWith { _return = true; };
} forEach ((_vehicle Call SRVVehicleLock_fnc_getVehicleKeys) select 0);
_return