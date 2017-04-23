params ["_player"];

    _position = (selectRandom SRVRespawn_spawnPoint) Call SRVCore_fnc_circle;
	[[_position, SRVRespawn_spawnHeight], { 
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
   }, owner _player] Call SRVCore_fnc_execServer;

waitUntil { _player getVariable ["loadedIn", false] };
_player Call SRVRespawn_fnc_equip;
[_player, getPlayerUID _player] Call SRVRespawn_fnc_update;
if(SRVRespawn_DebugLevel > 2) then { diag_log format["[SRVS-RESPAWN] Finish: %1", name _player]; };
