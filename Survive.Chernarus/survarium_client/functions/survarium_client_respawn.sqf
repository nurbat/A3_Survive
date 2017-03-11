/*while {true} do {
	if(player getVariable ["loadedIn", false]) then {
		waitUntil {!(isNil {player}) && player == player && (!alive player)};
		player setVariable ["loadedIn", false];
		cutText ["Loading in...","BLACK",1];
		[player, false] remoteExec ["survarium_respawn_load", 2];
		waitUntil {player getVariable ["loadedIn", false]};
		cutText ["","plain",1];
		[] spawn {
			player remoteExec ["survarium_core_player_update", 2];
		};
	}
};*/