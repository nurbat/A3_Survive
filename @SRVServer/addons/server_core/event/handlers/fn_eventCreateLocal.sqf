[[], 
{ 
	/*player addEventHandler ["AnimChanged", 		{ [_this, { [_this, "AnimChanged"] 		Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["AnimDone", 		{ [_this, { [_this, "AnimDone"] 		Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["AnimStateChanged", { [_this, { [_this, "AnimStateChanged"] Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];*/
	player addEventHandler ["ContainerClosed", 	{ [_this, { [_this, "ContainerClosed"] 	Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["ContainerOpened", 	{ [_this, { [_this, "ContainerOpened"] 	Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["ControlsShifted", 	{ [_this, { [_this, "ControlsShifted"] 	Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["Dammaged", 		{ [_this, { [_this, "Dammaged"] 		Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["Deleted", 			{ [_this, { [_this, "Deleted"] 			Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["Init", 			{ [_this, { [_this, "Init"] 			Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["HandleIdentity", 	{ [_this, { [_this, "HandleIdentity"] 	Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["InventoryClosed", 	{ [_this, { [_this, "InventoryClosed"] 	Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["InventoryOpened", 	{ [_this, { [_this, "InventoryOpened"] 	Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["Killed", 			{ [_this, { [_this, "Killed"] 			Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["Put", 				{ [_this, { [_this, "Put"] 				Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["Reloaded", 		{ [_this, { [_this, "Reloaded"] 		Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["Respawn", 			{ [_this, { [_this, "Respawn"] 			Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	player addEventHandler ["Take", 			{ [_this, { [_this, "Take"] 			Call SRVCore_fnc_runEvent; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }];
	SRVCore_fnc_execCommand = {
		params["_param", "_code", "_client"];
		if(isNil "_client") then { [_param, _code] remoteExec ["SRVCore_fnc_execCommand", 2]; }
		else { [_param, _code] remoteExec ["BIS_fnc_call", _client]; };
	};
}, _this] Call SRVCore_fnc_execCommand;