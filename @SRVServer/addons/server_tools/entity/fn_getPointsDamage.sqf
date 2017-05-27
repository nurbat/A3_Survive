/*
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * 0: HitPoints <ARRAY>
 *
 */
private["_hitPoints", "_allHitPoints"];
_allHitPoints = getAllHitPointsDamage _this;
_hitPoints = [];
{
	_hitPoints pushBack [_x, ((_allHitPoints select 2) select _forEachIndex)];
} forEach (_allHitPoints select 0);
_hitPoints