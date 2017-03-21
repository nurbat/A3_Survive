{ _this Call SRVServer_spawn_disconnect; }  Call SRVServer_callback_setHandleDisconnect;
{ _this Call SRVServer_spawn_died; }        Call SRVServer_callback_setEntityKilled;
{ _this Call SRVServer_spawn_connected; }   Call SRVServer_callback_setPlayerConnected;