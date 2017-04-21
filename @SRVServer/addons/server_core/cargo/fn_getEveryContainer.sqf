//return [["type", [items], [magazine], [weapons]], ...]
private["_object","_filteredItems", "_cargoType", "_cargoObject"];
_object = _this;
_filteredItems = [];
{
    _cargoType = _x select 0;
    _cargoObject = _x select 1;
    _filteredItems pushBack [_cargoType, getItemCargo _cargoObject, magazinesAmmoCargo _cargoObject, weaponsItemsCargo _cargoObject];
} forEach everyContainer _vehicleObject;
_filteredItems