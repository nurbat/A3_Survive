params ["_player"];

[[SRVLoot_PARAM, SRVLoot_SERVER], {
    _this spawn {

        //SRVLoot_PARAM
        SRVLoot_var_PARAM = _this select 0;
        SRVLoot_var_buildingNames   = (SRVLoot_var_PARAM select 0) select 0;
        SRVLoot_var_buildingTypes   = (SRVLoot_var_PARAM select 0) select 1;
        SRVLoot_var_buildingOption  = (SRVLoot_var_PARAM select 0) select 2;
        SRVLoot_var_buildingPos     = (SRVLoot_var_PARAM select 0) select 3;

        SRVLoot_var_tableType       = (SRVLoot_var_PARAM select 1) select 0;
        SRVLoot_var_tableItem       = (SRVLoot_var_PARAM select 1) select 1;
        //END SRVLoot_PARAM

        //SRVLoot_SERVER
        SRVLoot_var_SERVER          = _this select 1;
        SRVLoot_var_vehicle         = SRVLoot_var_SERVER select 0;
        SRVLoot_var_timeDelay       = SRVLoot_var_SERVER select 1;
        SRVLoot_var_distanceLoad    = SRVLoot_var_SERVER select 2;
        SRVLoot_var_serverLoad      = SRVLoot_var_SERVER select 3;
        //END SRVLoot_SERVER
        
        while { alive player } do 
        {
            sleep SRVLoot_var_timeDelay;
            if(!SRVLoot_var_vehicle and (vehicle player) != player) exitWith { };
            if(SRVLoot_var_serverLoad) exitWith { [ player, { _this Call SRVLoot_fnc_calculate; } ] remoteExec ["SRVCore_fnc_execCommand", 2]; };
            {
                try 
                {
                    SRVLoot_var_buildingNow = _x;
                    if (time < SRVLoot_var_buildingNow getVariable ["lootTime", 0]) throw false;    //BREAK
                    if (isObjectHidden SRVLoot_var_buildingNow) throw false;  //BREAK
                    //Удалить ( - [player]), если нужно что бы не обновлялся лут рядом с тобой
                    if (count (nearestObjects [getPos SRVLoot_var_buildingNow, (["CAManBase"]), 60] - [player]) > 0) throw false;    //BREAK

                    //Поиск здания
                    //================
                    SRVLoot_var_nowBuildingIndex = SRVLoot_var_buildingNames find (typeOf SRVLoot_var_buildingNow);
                    if(SRVLoot_var_nowBuildingIndex == -1) throw false;
                    //CREATE BUILDING
                    SRVLoot_var_nowBuildingOptions  = SRVLoot_var_buildingOption select SRVLoot_var_nowBuildingIndex;
                    SRVLoot_var_nowBuildingType     = SRVLoot_var_buildingTypes  select SRVLoot_var_nowBuildingIndex;
                    SRVLoot_var_nowBuildingPos      = SRVLoot_var_buildingPos    select SRVLoot_var_nowBuildingIndex;
                    if(count SRVLoot_var_nowBuildingPos > 0) then 
                    { 
                        {
                            _x = SRVLoot_var_buildingNow modelToWorld _x;
                        } forEach SRVLoot_var_nowBuildingPos
                    };
                    if(count SRVLoot_var_nowBuildingPos == 0) then { SRVLoot_var_nowBuildingPos = (SRVLoot_var_buildingNow buildingPos -1); };
                    if(count SRVLoot_var_nowBuildingPos == 0) throw false;
                    //CREATE TABLE
                    SRVLoot_var_nowTableIndex       = SRVLoot_var_tableType     find SRVLoot_var_nowBuildingType;
                    SRVLoot_var_nowTableItems       = SRVLoot_var_tableItem     select SRVLoot_var_nowTableIndex;
                    SRVLoot_var_serverBuilding      = [SRVLoot_var_buildingNow, SRVLoot_var_nowBuildingType, SRVLoot_var_nowBuildingOptions, SRVLoot_var_nowBuildingPos];
                    //SEND SERVER
                    [ [SRVLoot_var_serverBuilding, SRVLoot_var_nowTableItems], { _this Call SRVLoot_fnc_request; } ] remoteExec ["SRVCore_fnc_execCommand", 2];
                } catch { };
            } forEach nearestObjects [player, (["house"]), SRVLoot_var_distanceLoad];

        };
    };
}, owner _player] Call SRVCore_fnc_execCommand;