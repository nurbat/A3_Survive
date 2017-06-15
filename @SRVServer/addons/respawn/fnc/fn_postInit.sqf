["HandleDisconnect",    {   (_this select 0) Call SRVRespawn_fnc_isDisconnected;            }]  Call SRVCore_fnc_createEvent;
["EntityKilled",        {   (_this select 0) Call SRVRespawn_fnc_playerKilled;              }]  Call SRVCore_fnc_createEvent;
["PlayerConnected",     {   (_this select 4) Call SRVRespawn_fnc_startedRespawn;            }]  Call SRVCore_fnc_createEvent;
["EntityRespawned",     {   (owner (_this select 0)) Call SRVRespawn_fnc_startedRespawn;    }]  Call SRVCore_fnc_createEvent;
