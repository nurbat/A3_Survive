["HandleDisconnect",    {   (_this select 0) Call SRVRespawn_fnc_isDisconnected;   }]  Call SRVCore_fnc_createEvent;
["EntityKilled",        {   (_this select 0) Call SRVRespawn_fnc_playerKilled;  }]  Call SRVCore_fnc_createEvent;
["PlayerConnected",     {   (_this select 4) Call SRVRespawn_fnc_connected;     }]  Call SRVCore_fnc_createEvent;
["EntityRespawned",     
{   
    (_this select 0) setPos [20000, 20000, 0];
    (_this select 0) setVariable ["isDead", false, true];
    (owner (_this select 0)) Call SRVRespawn_fnc_connected;
}]  Call SRVCore_fnc_createEvent;
