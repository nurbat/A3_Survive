params ["_owner"];

[[], { 
    player setVariable ["isLoaded", false, true];
    player allowDamage false;
    cutText ["Loading in...","BLACK",1];
    waitUntil { player getVariable ["isLoaded", false] };
    cutText ["","plain",1];
    sleep 5;
    player allowDamage true;
}, _owner] Call SRVCore_fnc_execCommand; 