params ["_player"];

(owner _player) Call SRVServer_spawn_screen;

[[], { 
    //Player is Respawn
    player addEventHandler ["Respawn",
    { 
        player setPosASL [20000, 20000, 0];
        [player, { _this Call SRVServer_spawn_init; } ] remoteExecCall ["SRVServer_core_execClient", 2];
    }];

    //Player on Connected
    [] spawn {
        [player, { _this Call SRVServer_spawn_init; } ] remoteExecCall ["SRVServer_core_execClient", 2];
    };
}, owner _player] Call SRVServer_core_execServer;

