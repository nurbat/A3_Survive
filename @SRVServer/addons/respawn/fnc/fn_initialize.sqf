params["_player"];

if !(isPlayer _player) exitWith { };
if(Call SRVRespawn_fnc_isLoading) exitWith 
{ 
    _job = _player getVariable["isJob", ""];
    if(_job != "") then  { _job Call SRVCore_fnc_deleteJob; }; //Удаляем работу, если существует
    _player setVariable ["isLoaded", true, true];
    _player setVariable ["isJob", "", true];
    _player setVariable ["isConnected", true, true]; 
};
_player Call SRVRespawn_fnc_updatePlayer;

//(owner _player) Call SRVRespawn_fnc_loadScreen;
if(Call SRVRespawn_fnc_existPlayer) then { _player Call SRVRespawn_fnc_loadPlayer; }//Игрок существует, загружаем
else { _player Call SRVRespawn_fnc_createPlayer; };//Игрок отсуствует, создаем





