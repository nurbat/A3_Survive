
if(_this) then 
{
    SRVCore_ServerCommandPassword serverCommand format ["#lock"];
    {
        SRVCore_ServerCommandPassword serverCommand format ["#kick %1", name _x];
    } forEach allPlayer;
} else { SRVCore_ServerCommandPassword serverCommand format ["#unlock"]; };