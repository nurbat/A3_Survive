params ["_player"];
[[], {
    player addEventHandler ["Respawn",
    { 
        [player, { _this Call SRVLoot_fnc_initPlayer; } ] remoteExec ["SRVCore_fnc_execClient", 2];
    }];
    [player, { _this Call SRVLoot_fnc_initPlayer; } ] remoteExec ["SRVCore_fnc_execClient", 2];    
}, owner _player] Call SRVCore_fnc_execServer;