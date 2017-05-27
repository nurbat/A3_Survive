/*
 * Arguments:
 * 0: Player <OBJECT>
 * 1: Data <ARRAY>
 *
 * Return Value:
 * None
 *
 */
 params["_player", "_data"];

//ON CLIENT
[_data, {
//SERVER CODE
{
    _weaponName = (_x select 0);

    if(_weaponName != "") then { player addWeaponGlobal _weaponName; };    
    if(_forEachIndex == 0) then { removeAllPrimaryWeaponItems player; };
    if(_forEachIndex == 2) then { removeAllHandgunItems player; };
    
    {//WeaponItems
        if(_x != "") then { player addWeaponItem [_weaponName, _x]; };
    } forEach (_x select 1);

    //AmmoLoad
    _ammoData = _x select 2;
    if(count _ammoData > 0) then 
    {
        player addWeaponItem [_weaponName, [(_ammoData select 0), (_ammoData select 1), (_ammoData select 2)]];
    };
} forEach _this;
//END SERVER
}, _player] Call SRVCore_fnc_execCommand;
//END CLIENT
