_lootGroups = getArray( configFile >> "SRVConfig" >> "SRVLoot" >> "ListLoot" >> _this >> "group");
_lootGroups sort true; //From min 0% to max 100%

_chancePercent = random [0,100,50];
_return = "";
{
    _groupPercent = _x select 0;
    _groupName = _x select 1;

    if(_groupPercent > _chancePercent) then 
    {
        _return = _groupName;
    };
} forEach _lootGroups;
_return