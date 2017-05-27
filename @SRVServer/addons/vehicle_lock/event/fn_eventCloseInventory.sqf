/*
 * Arguments:
 * 0: Box <OBJECT>
 * 1: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, car] call SRVVehicleLock_fnc_addKey
 *
 */
params["_unit", "_box"];
private["_boxItems", "_boxNameItems", "_isVehicle", "_isPlayer"];

_boxNameItems = magazinesDetail _box;
_isVehicle = _unit in vehicle;
_isPlayer = isPlayer _unit;
_boxID = _box getVariable["DatabaseID", 0];

{
    _index = (SRVVehicleLock_Keys select 0) find _x;
    if(_index > -1) then 
    {
        _keyID = (SRVVehicleLock_Keys select 0);
        _sqlWrite = "";
        if(_isVehicle) then { _sqlWrite = format["vehicle:%1", _boxID]; };
        if(_isPlayer) then { _sqlWrite = format["player:%1", getPlayerUID _box]; };
        if !(_sqlWrite == "") then { [_keyID select _index, _sqlWrite] Call SRVVehicleLock_fnc_update; };
    };

} forEach _boxNameItems;