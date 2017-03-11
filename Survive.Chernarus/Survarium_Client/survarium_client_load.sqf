waitUntil {!(isNil {player}) && player == player && alive player};
cutText ["Loading in...","BLACK",1];
[player, false] remoteExec ["survarium_player_load", 2];
waitUntil {player getVariable ["loadedIn", false]};
cutText ["","plain",1];
[] spawn survarium_client_save;