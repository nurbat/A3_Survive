private["_object","_items"];
_object = _this select 0;
_items = _this select 1;
if ((typeName _items) isEqualTo "ARRAY") then 
{
	if!(_items isEqualTo [[],[]])then
	{
		{
			_object addItemCargoGlobal [_x ,((_items select 1) select _forEachIndex)];
		}
		forEach (_items select 0);
	};
};
true