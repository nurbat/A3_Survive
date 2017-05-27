/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Items <ARRAY>
 *
 */
private["_arrayUniform", "_arrayVest","_arrayBackpack", "_arrayBody"];


_arrayBody = [assignedItems _this, headgear _this, goggles _this, binocular _this];
//Uniform
_arrayUniform = [];
if !(isNull uniformContainer _this) then { _arrayUniform = [uniform _this, getItemCargo (uniformContainer _this), magazinesAmmoCargo (uniformContainer _this), getWeaponCargo (uniformContainer _this)]; };
//Vest
_arrayVest = [];
if !(isNull vestContainer _this) then { _arrayVest = [vest _this, getItemCargo (vestContainer _this), magazinesAmmoCargo (vestContainer _this), getWeaponCargo (vestContainer _this)]; };
//BackPack
_arrayBackpack = [];
if !(isNull backpackContainer _this) then { _arrayBackpack = [backpack _this, getItemCargo (backpackContainer _this), magazinesAmmoCargo (backpackContainer _this), getWeaponCargo (backpackContainer _this)]; };

[_arrayBody, _arrayUniform, _arrayVest, _arrayBackpack]

