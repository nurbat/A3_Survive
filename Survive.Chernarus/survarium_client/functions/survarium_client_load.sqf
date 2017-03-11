waitUntil {!(isNil {player}) && player == player && alive player};
player allowDamage false;
cutText ["Loading in...","BLACK",1];
[player, false] remoteExec ["survarium_respawn_load", 2];
waitUntil {player getVariable ["loadedIn", false]};
cutText ["","plain",1];
[] spawn {
	sleep 5;
	player allowDamage true;
};