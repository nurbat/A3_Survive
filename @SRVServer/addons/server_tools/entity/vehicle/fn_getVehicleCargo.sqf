/*
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * itemCargo <ARRAY>
 *
*/
params["_unit"];
private _containers = everyContainer _unit;
private _items = getItemCargo _unit;
private _magazines = magazinesAmmoCargo _unit;
private _weapons = weaponsItemsCargo _unit;
private _containersItems = [];
{
    private _index = (_items select 0) find (_x select 0);
    if(_index > -1) then {
        (_items select 0) deleteAt _index;
        (_items select 1) deleteAt _index;
    };
    //END
    private _cargoType = _x select 0;
    private _cargoObject = _x select 1;
    _containersItems pushBack [_cargoType, getItemCargo _cargoObject, magazinesAmmoCargo _cargoObject, weaponsItemsCargo _cargoObject];
} forEach _containers;
[_items, _magazines, _weapons, _containersItems]