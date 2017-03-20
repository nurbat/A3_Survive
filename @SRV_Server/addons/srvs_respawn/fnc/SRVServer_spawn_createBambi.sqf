params ["_player"];

    _position = (selectRandom spawnPoint) Call SRVServer_util_circle;
	[[_position, spawnHeight], { 
        removeAllWeapons player;
        removeAllAssignedItems player;
        removeGoggles player;
        removeHeadgear player;
        removeUniform player;
        removeVest player;
        removeBackpack player;

        _position = _this select 0;
        spawnHeight = _this select 1;

        player setDamage 0;
        player setPosASL [(_position select 0), (_position select 1), spawnHeight];

        player setVariable ["loadedIn", true, true];
   }, owner _player] Call SRVServer_core_exec;

waitUntil { _player getVariable ["loadedIn", false] };
_player Call SRVServer_spawn_equip;
[_player, getPlayerUID _player] Call SRVServer_core_player_update;
if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Finish: %1", name _player]; };
