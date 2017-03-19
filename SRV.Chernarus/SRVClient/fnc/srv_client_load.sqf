waitUntil {!(isNil {player}) && player == player && alive player};
player remoteExec ["survarium_respawn_load", 2];


/*player allowDamage false;
cutText ["Loading in...","BLACK",1];
[] spawn {
	[player] remoteExec ["survarium_respawn_load", 2];
	waitUntil {player getVariable ["loadedIn", false]};
	cutText ["","plain",1];
	sleep 5;
	player allowDamage true;
	player remoteExec ["survarium_core_player_update", 2];
};*/