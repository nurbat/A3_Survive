private["_array"];
private "_array";
_array = [];
if (count _this > 1) then
{
	{
		_array pushBack [_x, (_this select 1) select _forEachIndex];
	} 
	forEach (_this select 0);
};
_array