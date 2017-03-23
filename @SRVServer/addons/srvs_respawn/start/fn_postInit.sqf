{ _this Call SRVServer_spawn_disconnect; }  Call SRVServer_callback_setHandleDisconnect;
{ _killed Call SRVServer_spawn_died; }        Call SRVServer_callback_setEntityKilled;
{ _player Call SRVServer_spawn_connected; }   Call SRVServer_callback_setPlayerConnected;