private["_object","_items"];
_object = _this select 0;
_items = _this select 1;

if ((typeName _items) isEqualTo "ARRAY") then 
{
    {
        _object addMagazineTurret [_x select 0, _x select 1, _x select 2];
    } forEach _items;
};
true