params ["_player", "_uid"];
_playerPos = getPosASL _player;
_hitPoints = getAllHitPointsDamage _player;
if!(_player getVariable ["loadedIn", false]) exitWith { }; //EXIT PLAYER DONT IS LOAD

_updatestr = format ["updatePlayer:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:%18:%19:%20:%21:%22:%23:%24:%25:%26:%27:%28:%29:%30:%31", 
damage _player,//damage %1
getDir _player,//DIR %2
_playerPos select 0,//POS_X %3
_playerPos select 1,//POS_Y %4
_playerPos select 2,//POS_Z %5
_player Call SRVServer_core_getHitPoint,//DAMAGE HITS %6
assignedItems _player,//Items %7

//Backpack
backpack _player,//backpack %8
(getItemCargo backpackContainer _player) Call SRVServer_core_getCargo,//backpack_items %9
(backpackContainer _player) Call SRVServer_core_getMagazine,//backpack_Magazine %10
(getWeaponCargo backpackContainer _player) Call SRVServer_core_getCargo,//backpack_Weapons %11

currentWeapon _player,//currentWeapon %12
goggles _player,//goggles %13
handgunItems _player,//handgunItems %14
handgunWeapon _player,//handgunWeapon %15
headgear _player,//headgear %16
binocular _player,//binocular %17
_player Call SRVServer_core_getLoadedMagazines,//loaded_magazines %18
primaryWeapon _player,//primaryWeapon %19
primaryWeaponItems _player,//primary_weapon_items %20
secondaryWeapon _player,//secondaryWeapon %21
secondaryWeaponItems _player,//secondary_weapon_items %22

//Uniform
uniform _player,//uniform %23
(getItemCargo uniformContainer _player) Call SRVServer_core_getCargo,//uniform_items %24
(uniformContainer _player) Call SRVServer_core_getMagazine,//uniform_items %25
(getWeaponCargo uniformContainer _player) Call SRVServer_core_getCargo,//uniform_items %26

//Vest
vest _player,//Vest %27
(getItemCargo vestContainer _player) Call SRVServer_core_getCargo,//Vest Items %28
(vestContainer _player) Call SRVServer_core_getMagazine,//Vest Items %29
(getWeaponCargo vestContainer _player) Call SRVServer_core_getCargo,//Vest Items %30

_uid];//UID %31
if(spawnDebug) then { diag_log format["[SRVS-SPAWN] %1", _updatestr]; };
[2, _updatestr] call SRVServer_db_query;