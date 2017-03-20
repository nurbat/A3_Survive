params ["_id", "_uid", "_name", "_jip", "_owner"];

_owner Call SRVServer_spawn_screen;

[[], { 
    //Player is Respawn
    player addEventHandler ["Respawn",
    { 
        player setPosASL [20000, 20000, 0];
        ["", getPlayerUID (_this select 0), name (_this select 0), "", owner (_this select 0)] remoteExec ["SRVServer_spawn_init", 2]; 
    }];

    //Player on Connected
    [] spawn {
		["", getPlayerUID player, name player, "", owner player] remoteExec ["SRVServer_spawn_init", 2];
    };
}, _owner] Call SRVServer_core_exec;

