private["_object","_items", "_cargoType", "_cargoObject", "_cargoMode", "_backName", "_backObject"];
_object = _this select 0;
_items = _this select 1;
{
    _cargoType = _x select 0;
    _cargoItems = _x select 1;
    _cargoMagazines = _x select 2;
    _cargoWeapons = _x select 3;

    _cargoMode = Call SRVCore_fnc_itemType;
    switch (_cargoMode) do
	{
		case "Backpack": { _object addBackpackGlobal [_cargoType, 1]; };
		default { _object addItemCargoGlobal [_cargoType, 1]; };
	};

    {
        _backName = _x select 0;
        _backObject = _x select 1;
        if !(_backName == _cargoType) throw false;
        if !(count (getItemCargo _backObject) > 0) throw false;
        if !(count (magazinesAmmoCargo _backObject) > 0) throw false;
        if !(count (weaponsItemsCargo _backObject) > 0) throw false;

        [_backObject, _cargoItems] Call SRV_Core_setItemCargo;
        [_backObject, _cargoWeapons] Call SRV_Core_setWeaponsItemsCargo;
        [_backObject, _cargoMagazines] Call SRV_Core_setMagazinesAmmoCargo;

    } forEach (everyContainer _vehicleObject);   

} forEach _items;
true