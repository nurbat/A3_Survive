params ["_owner"];

[[], { 
    waitUntil {!(isNil {player}) && player == player};// && alive player
    player allowDamage false;
    cutText ["Loading in...","BLACK",1];
    [] spawn {
        waitUntil { player getVariable ["loadedIn", false] };
        cutText ["","plain",1];
        sleep 5;
        player allowDamage true;
    };
}, _owner] Call SRVServer_core_exec; 