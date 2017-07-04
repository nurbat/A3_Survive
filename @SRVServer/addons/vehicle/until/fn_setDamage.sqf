/*
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Damage <INT> / Damage <ARRAY> [MIN, MAX]
 *
 * Return Value:
 * Damage <INT>
 *
*/

params["_vehicle", "_damage"];
{
	if (typeName _damage isEqualTo "ARRAY") then
	{
		private _damageMin = (_damage select 0) / 100;
		private _damageMax = (_damage select 1) / 100;
		private _damageDiff = _damageMin - _damageMax;
		private _damageChance = random _damageDiff;
		private _damage = _damageChance + _damageMin;
		_vehicle setHitIndex [_forEachIndex, _damage];
	} 
    else { _vehicle setHitIndex [_forEachIndex, _damage / 100]; };
} forEach ((getAllHitPointsDamage _vehicle) select 0);
