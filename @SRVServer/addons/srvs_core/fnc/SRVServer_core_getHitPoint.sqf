private["_hitPoints","_filteredHitPoints"];
_hitPoints = getAllHitPointsDamage _this;
_filteredHitPoints = [];
if !(_hitPoints isEqualTo []) then 
{
	{
		_filteredHitPoints pushBack [_x, (_hitPoints select 2) select _forEachIndex];
	}
	forEach (_hitPoints select 1);
};
_filteredHitPoints