private["_object", "_hitPoints","_filteredHitPoints"];
_object = _this select 0;
_hitPoints = _this select 1;
if ((typeName _hitPoints) isEqualTo "ARRAY") then 
{
    {
        _object setHitPointDamage [_x select 0, _x select 1];
    } forEach _hitPoints;
};