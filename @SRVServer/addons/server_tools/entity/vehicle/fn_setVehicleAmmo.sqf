/*
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Ammo <ARRAY>
 *
 * Return Value:
 * Ammo <ARRAY>
 *
*/
params["_vehicle", "_ammo"];
if ((typeName _ammo) isEqualTo "ARRAY") then 
{
    {
        _vehicle addMagazineTurret [_x select 0, _x select 1, _x select 2];
    } forEach _ammo;
};
true