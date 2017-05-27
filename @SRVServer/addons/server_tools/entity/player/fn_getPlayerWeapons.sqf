/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Weapons <ARRAY>
 *
 */
private["_primaryWeapon", "_primaryMagazine", "_secondaryMagazine", "_handgunMagazine", "_secondaryWeapon", "_handgunWeapon"];
_primaryMagazine = [];
_secondaryMagazine = [];
_handgunMagazine = [];
{
    _magazineClass = _x select 0;
    _magazineCount = _x select 1;
    _magazineState = _x select 2;
    _magazineType  = _x select 3;
    _magazineMuzzle = _x select 4;

    if(_magazineState and _magazineCount > 0) then
    {
        switch (_magazineType) do 
		{
			case 1: { _primaryMagazine = [_magazineClass, _magazineCount, _magazineMuzzle]; };
			case 4: { _secondaryMagazine = [_magazineClass, _magazineCount, _magazineMuzzle]; };
            case 2: { _handgunMagazine = [_magazineClass, _magazineCount, _magazineMuzzle]; };
		};
    };
} forEach (magazinesAmmoFull _this);

_primaryWeapon      = [primaryWeapon _this, primaryWeaponItems _this, _primaryMagazine];
_secondaryWeapon    = [secondaryWeapon _this, secondaryWeaponItems _this, _secondaryMagazine];
_handgunWeapon      = [handgunWeapon _this, handgunItems _this, _handgunMagazine];

[_primaryWeapon, _secondaryWeapon, _handgunWeapon]

