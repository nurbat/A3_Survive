params ["_player"];

[[buildingList, lootTable, lootGroup, timeDelay, distanceLoad], {
    _this spawn { 
        params ["buildingList", "lootTable", "lootGroup", "timeDelay", "distanceLoad"];
        while { alive player } do {
            sleep _this;
            {

                try {
                    buildingNow = _x;
                    if (time < buildingNow getVariable ["lootTime", 0]) throw false;    //BREAK
                    if (isObjectHidden _building) throw false;  //BREAK

                    //================
                    buildingType = "";
                    buildingPos = [];
                    {
                        buildingGet = _x;
                        if(buildingGet select 1 == typeOf buildingNow) then {
                            buildingType = buildingGet select 0;
                            buildingPos = buildingGet select 2;
                        };
                    } forEach buildingList;
                    //================
                    if (buildingType == "") throw false;    //BREAK



                } 
                catch 
                {

                };

            } forEach nearestObjects [player, (["house"]), distanceLoad];

            //Get Loot of the building




            //[ [player, getPlayerUID player], { [(_this select 0), (_this select 1)] Call SRVServer_core_player_update; } ] remoteExecCall ["SRVServer_core_execClient", 2];
        };
    };
}, owner _player] Call SRVServer_core_execServer;