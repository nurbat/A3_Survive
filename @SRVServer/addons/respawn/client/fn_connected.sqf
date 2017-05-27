/*
1. Если игрок вылетел, вышел. Но заходит в течении N Времени, то игрок зайдет на сервер сразу же, без загрузки из бд.
2. Если игрок зашел но появился пустой, не загрузились данные. Нажать респавн, для загрузки данных или создания нового персонажа.
*/

//Запускаем инициализацию.
[[], {
    if !(isPlayer player) exitWith { };
    if (player getVariable["isDead", false]) exitWith { };
    player setVariable ["isLoaded", false, true];
    player allowDamage false;
    cutText ["Loading in...","BLACK",1];

    [] spawn 
    {
        [player, { _this Call SRVRespawn_fnc_initialize; }] remoteExec ["SRVCore_fnc_execCommand", 2];
        waitUntil { player getVariable ["isLoaded", false] };
        cutText ["","plain",1];
        sleep 5;
        player allowDamage true;

    };
}, _this] Call SRVCore_fnc_execCommand;