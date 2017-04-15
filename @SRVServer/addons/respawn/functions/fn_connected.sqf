(owner _this) Call SRVRespawn_fnc_screen;

[[], { 
    //Player is Respawn
    player addEventHandler ["Respawn",
    { 
        player setPosASL [20000, 20000, 0];
        [player, { _this Call SRVRespawn_fnc_init; } ] remoteExec ["SRVCore_fnc_execClient", 2];
    }];

    //Player on Connected
    [] spawn {
        [player, { _this Call SRVRespawn_fnc_init; } ] remoteExec ["SRVCore_fnc_execClient", 2];
    };
}, owner _this] Call SRVCore_fnc_execServer;

