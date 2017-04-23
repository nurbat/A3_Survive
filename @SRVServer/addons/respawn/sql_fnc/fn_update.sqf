params ["_player", "_uid"];
_playerPos = getPosASL _player;
_hitPoints = getAllHitPointsDamage _player;
if!(_player getVariable ["loadedIn", false]) exitWith { }; //EXIT PLAYER DONT IS LOAD
//_updatestr = format ["updatePlayer:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:%18:%19:%20:%21:%22:%23:%24:%25:%26:%27:%28:%29:%30:%31", 
_updatestr = format ["UPDATE player SET 
damage='%1', 
direction='%2', 
position='%3', 
hitpoints='%4', 
assigned_items='%5', 
backpack='%6', 
backpack_items='%7', 
backpack_magazines='%8', 
backpack_weapons='%9', 
current_weapon='%10', 
goggles='%11', 
handgun_items='%12', 
handgun_weapon='%13', 
headgear='%14', 
binocular='%15', 
loaded_magazines='%16', 
primary_weapon='%17', 
primary_weapon_items='%18', 
secondary_weapon='%19', 
secondary_weapon_items='%20', 
uniform='%21', 
uniform_items='%22', 
uniform_magazines='%23', 
uniform_weapons='%24', 
vest='%25', 
vest_items='%26', 
vest_magazines='%27', 
vest_weapons='%28' 
WHERE uid = '%29'", 
damage _player,//damage %1
getDir _player,//DIR %2
_playerPos,//POS_Z %3
_player Call SRVCore_fnc_getAllHitPointsDamage,//DAMAGE HITS %4
assignedItems _player,//Items %5

//Backpack
backpack _player,//backpack %6
(getItemCargo backpackContainer _player) Call SRVRespawn_fnc_getCargo,//backpack_items %7
(backpackContainer _player) Call SRVRespawn_fnc_getMagazine,//backpack_Magazine %8
(getWeaponCargo backpackContainer _player) Call SRVRespawn_fnc_getCargo,//backpack_Weapons %9

currentWeapon _player,//currentWeapon %10
goggles _player,//goggles %11
handgunItems _player,//handgunItems %12
handgunWeapon _player,//handgunWeapon %13
headgear _player,//headgear %14
binocular _player,//binocular %15
_player Call SRVRespawn_fnc_getLoadedMagazines,//loaded_magazines %16
primaryWeapon _player,//primaryWeapon %17
primaryWeaponItems _player,//primary_weapon_items %18
secondaryWeapon _player,//secondaryWeapon %19
secondaryWeaponItems _player,//secondary_weapon_items %20

//Uniform
uniform _player,//uniform %21
(getItemCargo uniformContainer _player) Call SRVRespawn_fnc_getCargo,//uniform_items %22
(uniformContainer _player) Call SRVRespawn_fnc_getMagazine,//uniform_items %23
(getWeaponCargo uniformContainer _player) Call SRVRespawn_fnc_getCargo,//uniform_items %24

//Vest
vest _player,//Vest %25
(getItemCargo vestContainer _player) Call SRVRespawn_fnc_getCargo,//Vest Items %26
(vestContainer _player) Call SRVRespawn_fnc_getMagazine,//Vest Items %17
(getWeaponCargo vestContainer _player) Call SRVRespawn_fnc_getCargo,//Vest Items %28

_uid];//UID %29
if(SRVRespawn_DebugLevel > 2) then { diag_log format["[SRVS-SPAWN] %1", _updatestr]; };
[2, _updatestr] call SRVDB_fnc_query;