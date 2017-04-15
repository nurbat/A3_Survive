params ["_player", "_uid"];
_playerPos = getPosASL _player;
_hitPoints = getAllHitPointsDamage _player;
if!(_player getVariable ["loadedIn", false]) exitWith { }; //EXIT PLAYER DONT IS LOAD
//_updatestr = format ["updatePlayer:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:%18:%19:%20:%21:%22:%23:%24:%25:%26:%27:%28:%29:%30:%31", 
_updatestr = format ["UPDATE player SET 
damage='%1', 
direction='%2', 
position_x='%3', 
position_y='%4', 
position_z='%5', 
hitpoints='%6', 
assigned_items='%7', 
backpack='%8', 
backpack_items='%9', 
backpack_magazines='%10', 
backpack_weapons='%11', 
current_weapon='%12', 
goggles='%13', 
handgun_items='%14', 
handgun_weapon='%15', 
headgear='%16', 
binocular='%17', 
loaded_magazines='%18', 
primary_weapon='%19', 
primary_weapon_items='%20', 
secondary_weapon='%21', 
secondary_weapon_items='%22', 
uniform='%23', 
uniform_items='%24', 
uniform_magazines='%25', 
uniform_weapons='%26', 
vest='%27', 
vest_items='%28', 
vest_magazines='%29', 
vest_weapons='%30' 
WHERE uid = '%31'", 
damage _player,//damage %1
getDir _player,//DIR %2
_playerPos select 0,//POS_X %3
_playerPos select 1,//POS_Y %4
_playerPos select 2,//POS_Z %5
_player Call SRVCore_fnc_getHitPoint,//DAMAGE HITS %6
assignedItems _player,//Items %7

//Backpack
backpack _player,//backpack %8
(getItemCargo backpackContainer _player) Call SRVCore_fnc_getCargo,//backpack_items %9
(backpackContainer _player) Call SRVCore_fnc_getMagazine,//backpack_Magazine %10
(getWeaponCargo backpackContainer _player) Call SRVCore_fnc_getCargo,//backpack_Weapons %11

currentWeapon _player,//currentWeapon %12
goggles _player,//goggles %13
handgunItems _player,//handgunItems %14
handgunWeapon _player,//handgunWeapon %15
headgear _player,//headgear %16
binocular _player,//binocular %17
_player Call SRVCore_fnc_getLoadedMagazines,//loaded_magazines %18
primaryWeapon _player,//primaryWeapon %19
primaryWeaponItems _player,//primary_weapon_items %20
secondaryWeapon _player,//secondaryWeapon %21
secondaryWeaponItems _player,//secondary_weapon_items %22

//Uniform
uniform _player,//uniform %23
(getItemCargo uniformContainer _player) Call SRVCore_fnc_getCargo,//uniform_items %24
(uniformContainer _player) Call SRVCore_fnc_getMagazine,//uniform_items %25
(getWeaponCargo uniformContainer _player) Call SRVCore_fnc_getCargo,//uniform_items %26

//Vest
vest _player,//Vest %27
(getItemCargo vestContainer _player) Call SRVCore_fnc_getCargo,//Vest Items %28
(vestContainer _player) Call SRVCore_fnc_getMagazine,//Vest Items %29
(getWeaponCargo vestContainer _player) Call SRVCore_fnc_getCargo,//Vest Items %30

_uid];//UID %31
if(spawnDebug) then { diag_log format["[SRVS-SPAWN] %1", _updatestr]; };
[2, _updatestr] call SRVDB_fnc_query;