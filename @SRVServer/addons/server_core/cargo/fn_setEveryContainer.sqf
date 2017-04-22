private["_object","_items", "_cargoType", "_cargoObject", "_cargoMode", "_backName", "_backObject"];
_object = _this select 0;
_items = _this select 1;
if ((typeName _items) isEqualTo "ARRAY") then 
{
    {
        _cargoType = _x select 0;
        _cargoItems = _x select 1;
        _cargoMagazines = _x select 2;
        _cargoWeapons = _x select 3;

        _cargoMode = _cargoType Call SRVCore_fnc_itemType;
        switch (_cargoMode) do
        {
            case "Backpack": { _object addBackpackGlobal [_cargoType, 1]; };
            default { _object addItemCargoGlobal [_cargoType, 1]; };
        };

        {
            try
            {
                _backName = _x select 0;
                _backObject = _x select 1;
                if !(_backName == _cargoType) throw false;
                diag_log format["%1 - %2 - %3", getItemCargo _backObject, count (magazinesAmmoCargo _backObject), count (weaponsItemsCargo _backObject)];
                if (count ((getItemCargo _backObject) select 0) > 0) throw false;
                if (count (magazinesAmmoCargo _backObject) > 0) throw false;
                if (count (weaponsItemsCargo _backObject) > 0) throw false;

                [_backObject, _cargoItems] Call SRVCore_fnc_setItemCargo;
                [_backObject, _cargoMagazines] Call SRVCore_fnc_setMagazinesAmmoCargo;
                [_backObject, _cargoWeapons] Call SRVCore_fnc_setWeaponsItemsCargo;
            } catch { };
        } forEach (everyContainer _vehicleObject);   

    } forEach _items;
};
true