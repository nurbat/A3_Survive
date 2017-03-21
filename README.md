# arma3_survarium_mode
<span>
<p>@Survive_Server => @SRVServer</p>
<p>@Survive_Client => @SRVClient</p>
</span>

<span>
<p>SRVServer_callback_set.... (Add rule to exec)</p>
<code>{ _this Call _FUNCTION_HERE; }  Call SRVServer_callback_set(HandleDisconnect) or etc...;</code>
<p>Client -> Server</p>
<code>[_params, { _this Call _YOU_CALL_FUNCTION; } ] remoteExecCall ["SRVServer_core_execClient", 2];</code>
<p>Server -> Client</p>
<code>[_params, { _YOU_HERE_CODE }, _OWNER_PLAYER ] Call SRVServer_core_execServer;</code>
</span>


<span>
SRVS_Callback
<p>!!DONT USE AWAIT!! [Wait until AND while {true} etc..]</p>
<p>Create handle to call you file and use waitUntil</p>
<p>Example: Send to server _player call SRVServer_spawn_delete</p>
<code>
[0, { 
    [player, { _this Call SRVServer_spawn_delete; } ] remoteExecCall ["SRVServer_core_execClient", 2];
}, ownerId] Call SRVServer_core_execServer;
</code>
</span>
</span>
