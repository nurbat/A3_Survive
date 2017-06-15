 [SRVRespawn_cfg_posInit, {
    (_this select 0) setPos _this;
    if !(isPlayer player) exitWith { };
    if(player getVariable ["initSpawn", false]) exitWith { }; //Exit on initSpawn
    player setVariable ["initSpawn", true, true];
    player allowDamage false;
    cutText ["Loading in...","BLACK",1];

    [] spawn 
    {
        [player, { _this Call SRVRespawn_fnc_onRespawn; }] remoteExec ["SRVCore_fnc_execCommand", 2];
        waitUntil { !(player getVariable ["initSpawn", true]) };
        cutText ["","plain",1];
        sleep 5;
        player allowDamage true;

    };
}, _this] Call SRVCore_fnc_execCommand;