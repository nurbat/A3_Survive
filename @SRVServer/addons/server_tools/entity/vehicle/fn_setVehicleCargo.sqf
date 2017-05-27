/*
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Cargo <Array>
 *
 * Return Value:
 * None
 *
*/
params["_unit", "_cargo"];
if(isNil "_cargo") exitWith { };

private _items      = _cargo select 0;
private _magazines  = _cargo select 1;
private _weapons    = _cargo select 2;
private _containers = _cargo select 3;
//_items
{
    _unit addItemCargoGlobal [_x ,((_items select 1) select _forEachIndex)];
} forEach (_items select 0);
//_magazines
{
    _unit addMagazineAmmoCargo [_x select 0, 1 , _x select 1];
} forEach _magazines;

//_weapons
{
	_unit addWeaponCargoGlobal [_x select 0, 1];
    if(count (_x select 4) > 0) then { _unit addWeaponItem  [_x select 0, [(_x select 4) select 0, (_x select 4) select 1]]; };
    for "_i" from 1 to 3 do {
        if((_x select _i) != "") then { _unit addWeaponItem [_x select 0, (_x select _i)]; };
    };
    if((_x select 5) != "") then { _unit addWeaponItem [_x select 0, (_x select 5)]; };
} forEach _weapons;

//_containers
if ((typeName _containers) isEqualTo "ARRAY") then 
{
    {
        private _cargoType = _x select 0;
        private _cargoItems = _x select 1;
        private _cargoMagazines = _x select 2;
        private _cargoWeapons = _x select 3;
        private _oldContainers = everyContainer _unit;
        private _cargoMode = _cargoType Call SRVTools_fnc_itemType;
        switch (_cargoMode) do
        {
            case "Backpack": { _unit addBackpackGlobal [_cargoType, 1]; };
            default { _unit addItemCargoGlobal [_cargoType, 1]; };
        };
        private _newContainer = (((everyContainer _unit) - _oldContainers) select 0) select 1;
        try
        {
            [_newContainer, _cargoItems] Call SRVTools_fnc_setItemCargo;
            [_newContainer, _cargoMagazines] Call SRVTools_fnc_setMagazinesAmmoCargo;
            [_newContainer, _cargoWeapons] Call SRVTools_fnc_setWeaponsItemsCargo;
        } catch { };
    } forEach _containers;
};