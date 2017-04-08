_lootItems = getArray( configFile >> "SRVConfig" >> "SRVLoot" >> "GroupLoot" >> _this >> "items");
_lootItems sort true; //From min 0% to max 100%

_chancePercent = random [0,100,50];
_return = "";
{
    _itemPercent = _x select 0;
    _itemName = _x select 1;

    if(_itemPercent > _chancePercent) then 
    {
        _return = _itemName;
    };
} forEach _lootItems;
_return