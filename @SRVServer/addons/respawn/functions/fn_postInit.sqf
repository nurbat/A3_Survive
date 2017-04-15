{ _this Call SRVRespawn_fnc_disconnect; }  Call SRVCall_fnc_setHandleDisconnect;
{ _killed Call SRVRespawn_fnc_died; }        Call SRVCall_fnc_setEntityKilled;
{ _player Call SRVRespawn_fnc_connected; }   Call SRVCall_fnc_setPlayerConnected;