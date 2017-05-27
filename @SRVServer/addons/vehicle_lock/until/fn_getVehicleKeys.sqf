/*
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * 0: Keys <ARRAY> [[KeyID], [KeyNames], [KeyClasses], [KeyVehicles], [KeyIndex]]
 *
 * Example:
 * car call SRVVehicleLock_fnc_getVehicleKeys;
 *
 */
private["_returnKeys"];
_returnKeys = [[],[],[],[],[]];
{
    _keyName    = _x select 0;
    _KeyClass   = _x select 1;
    _KeyVehicle = _x select 2;

    if(_this isEqualTo _KeyVehicle) then 
    { 
        (_returnKeys select 0)  pushBack (_x select 0); //KeyID
        (_returnKeys select 1)  pushBack (_x select 1); //KeyNames
        (_returnKeys select 2)  pushBack (_x select 2); //KeyClasses
        (_returnKeys select 3)  pushBack (_x select 3); //KeyVehicles
        (_returnKeys select 4)  pushBack _forEachIndex; //KeyIndex
    };

} forEach SRVVehicleLock_Keys;
_returnKeys