private["_object","_items","_realContainers","_containers","_i"];
_object = _this;
_items = getItemCargo _object;
_realContainers = [] ;
_containers = (everyContainer _object);
if !(_containers isEqualTo []) then
{
	{
	  _realContainers pushBack (_x select 0);
	}
	forEach _containers;
};
if !(_items isEqualTo [[], []]) then
{
	for "_i" from ((count (_items select 0)) - 1) to 0 step -1 do 
	{
		if (((_items select 0) select _i) in _realContainers) then
		{
			(_items select 0) deleteAt _i;
			(_items select 1) deleteAt _i;
		};
	};
};
_items