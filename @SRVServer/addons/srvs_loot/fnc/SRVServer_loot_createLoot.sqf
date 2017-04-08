_timeDelay = getNumber( configFile >> "SRVConfig" >> "SRVLoot" >> "lootLife");
_countPointLoot = getNumber( configFile >> "SRVConfig" >> "SRVLoot" >> "countPointLoot");
_countItemsLoot = getNumber( configFile >> "SRVConfig" >> "SRVLoot" >> "countItemsLoot");
_lootLife = getNumber( configFile >> "SRVConfig" >> "SRVLoot" >> "lootLife");

//Building
_buildObj = configFile >> "SRVConfig" >> "SRVLoot" >> "Buildings" >> typeOf _this;
_buildPos = getArray( _buildObj >> "position");
_buildType = getText( _buildObj >> "type");
if(count _buildPos > _countPointLoot) then { _buildPos = _buildPos select [0, _countPointLoot]; }; //Количество точек

//LootListCreate
_lootObj = getArray( configFile >> "SRVConfig" >> "SRVLoot" >> "ListLoot" >> _buildType); //[ [_chancePercent, _groupName], ...]
_lootObj sort true;

_this setVariable ["LootLife", time + _lootLife];


{
    _groupName = (_buildType Call SRVServer_loot_getGroup);
    _Items = ([_groupName, _countItemsLoot] Call SRVServer_loot_getItems);


} forEach _buildPos;

//_array sort true;