waitUntil {!(isNil {player}) && player == player};
player setVariable ["loadedIn", false, true];
player allowDamage false;
cutText ["Loading in...","BLACK",1];
[] spawn {
	[player, false] remoteExec ["survarium_respawn_load", 2];
	waitUntil {player getVariable ["loadedIn", false]};
	cutText ["","plain",1];
	sleep 5;
	player allowDamage true;
};