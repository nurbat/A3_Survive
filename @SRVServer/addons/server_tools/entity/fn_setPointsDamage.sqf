/*
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: hitPoints <ARRAY>
 *
 * Return Value:
 * None
 *
 */
params["_object", "_dataPoints"];
private["_object", "_hitPoints","_filteredHitPoints"];

{
    _object setHitPointDamage [_x select 0, _x select 1];
} forEach _dataPoints;