params ["_player"];

[[buildingList, lootTable, lootGroup, timeDelay, distanceLoad, serverLoad], {
    _this spawn {
        buildingList = _this select 0;
        lootTable = _this select 1;
        lootGroup = _this select 2;
        timeDelay = _this select 3;
        distanceLoad = _this select 4;
        serverLoad = _this select 5;

        
        while { alive player } do {
            sleep timeDelay;
            if !(serverLoad) then {
                {

                    try {
                        buildingNow = _x;
                        if (time < buildingNow getVariable ["lootTime", 0]) throw false;    //BREAK
                        if (isObjectHidden buildingNow) throw false;  //BREAK
                        if (count (nearestObjects [getPos buildingNow, (["CAManBase"]), 60] - [player]) > 0) throw false;    //BREAK

                        //Поиск здания
                        //================
                        _buildingType = "";
                        posItems = [];
                        {
                            buildingGet = _x;
                            if(buildingGet select 1 == typeOf buildingNow) then {
                                _buildingType = buildingGet select 0;
                                if(count (buildingGet select 2) > 0) then { posItems append (buildingNow modelToWorld (buildingGet select 2)); }
                                else { posItems append (buildingNow buildingPos -1); };
                            };
                        } forEach buildingList;
                        //================
                        if !(count posItems > 0) throw false;    //BREAK

                        //Загрузка всех предметов для текущего здания
                        //===============
                        _lootLoad = [];
                        {
                            lootNow = _x;
                            if(lootNow select 0 == _buildingType) then {
                                _lootLoad = lootNow select 1;
                            };
                        } forEach lootTable;

                        //Загрузка Груп_Предметов для текущего здания
                        //===============
                        _itemsLoad = [];
                        {
                            lootNow = _x;
                            {
                                lootGroupNow = _x;
                                if(lootNow select 1 == lootGroupNow select 0) then {
                                    _itemsLoad = _itemsLoad + (lootGroupNow select 1);
                                } else {
                                    _itemsLoad pushBack lootNow;
                                };
                            } forEach lootGroup;

                        } forEach _lootLoad;
                        //===============
                        [ [buildingNow, posItems, _itemsLoad], { _this Call SRVLoot_fnc_request; } ] remoteExec ["SRVCore_fnc_execClient", 2];


                    } 
                    catch 
                    {

                    };

                } forEach nearestObjects [player, (["house"]), distanceLoad];
            } else {
                [ player, { _this Call SRVLoot_fnc_calculate; } ] remoteExec ["SRVCore_fnc_execClient", 2];
            };
        };
    };
}, owner _player] Call SRVCore_fnc_execServer;