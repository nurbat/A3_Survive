                {

                    try {
                        buildingNow = _x;
                        if (time < buildingNow getVariable ["lootTime", 0]) throw false;    //BREAK
                        if (isObjectHidden buildingNow) throw false;  //BREAK
                        if (count (nearestObjects [getPos buildingNow, (["CAManBase"]), 60] - [_this]) > 0) throw false;    //BREAK

                        //Поиск здания
                        //================
                        _buildingType = "";
                        posItems = [];
                        itemMultiple = 0;
                        {
                            buildingGet = _x;
                            if(count buildingGet == 3) then {
                                //[type, name, pos]
                                if(buildingGet select 1 == typeOf buildingNow) then {
                                    _buildingType = buildingGet select 0;
                                    if(count (buildingGet select 2) > 0) then { posItems append (buildingNow modelToWorld (buildingGet select 2)); }
                                    else { posItems append (buildingNow buildingPos -1); };
                                };
                            }else {
                                //[0, type, name, pos]
                                if(buildingGet select 2 == typeOf buildingNow) then {
                                    itemMultiple = buildingGet select 0;
                                    _buildingType = buildingGet select 1;
                                    if(count (buildingGet select 3) > 0) then { posItems append (buildingNow modelToWorld (buildingGet select 3)); }
                                    else { posItems append (buildingNow buildingPos -1); };
                                };                            
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
                        [buildingNow, _buildingPos, _itemsLoad, itemMultiple] Call SRVLoot_fnc_request;


                    } 
                    catch 
                    {

                    };

                } forEach nearestObjects [_this, (["house"]), distanceLoad];                        //===============
