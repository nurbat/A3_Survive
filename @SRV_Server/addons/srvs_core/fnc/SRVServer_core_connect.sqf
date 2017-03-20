params ["_id", "_uid", "_name", "_jip", "_owner"];
private["_player"];
{
    if(name _x == _name) then {
        _player = _x;
    };
} forEach allPlayers;

_player Call SRVServer_spawn_connected;
