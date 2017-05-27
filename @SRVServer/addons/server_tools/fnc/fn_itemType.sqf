private["_itemClassName","_cargoType","_itemType"];
_itemClassName = _this;
_cargoType = "Item";
_itemType = [_itemClassName] call BIS_fnc_itemType;
switch( _itemType select 0) do 
{
	case "Equipment": 	{ _cargoType = _itemType select 1; };
	default				{ _cargoType = _itemType select 0 };
};
_cargoType