params ["_newEntity", "_oldEntity"];
diag_log format["[SRVS-RESPAWN] SS"];
/*	[[], { 
		waitUntil {!(isNil {player}) && player == player && alive player};
		player allowDamage false;
		cutText ["Loading in...","BLACK",1];

		[] spawn {
			["", getPlayerUID player, name player, "", owner player] remoteExec ["SRVServer_spawn_init", 2];
			waitUntil {player getVariable ["loadedIn", false]};
			cutText ["","plain",1];
			sleep 5;
			player allowDamage true;
		};
	}, owner _newEntity] Call SRVServer_core_client;
*/