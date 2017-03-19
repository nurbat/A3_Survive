while {true} do {
	sleep 300;
	waitUntil {!(isNil {player}) && player == player && alive player};
	player remoteExec ["survarium_core_player_update", 2];
};