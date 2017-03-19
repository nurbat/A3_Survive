params ["_id", "_uid", "_name", "_jip", "_owner"];

[[], { 
    waitUntil {!(isNil {player}) && player == player && alive player};
    player allowDamage false;
    cutText ["Loading in...","BLACK",1];
    player addEventHandler ["Respawn",{ ["", getPlayerUID (_this select 0), name (_this select 0), "", owner (_this select 0)] remoteExec ["SRVServer_spawn_init", 2]; }];
    [] spawn {
		["", getPlayerUID player, name player, "", owner player] remoteExec ["SRVServer_spawn_init", 2];
        waitUntil {player getVariable ["loadedIn", false]};
        cutText ["","plain",1];
        sleep 5;
        player allowDamage true;
    };
}, _owner] Call SRVServer_core_exec;
