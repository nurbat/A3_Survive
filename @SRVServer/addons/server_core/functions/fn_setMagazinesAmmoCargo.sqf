private["_object","_magazines"];
_object = _this select 0;
_magazines = _this select 1;
if ((typeName _magazines) isEqualTo "ARRAY") then 
{	
	if!(_magazines isEqualTo [])then
	{
		{
			_object addMagazineAmmoCargo [_x select 0, 1 , _x select 1];
		}
		forEach _magazines;
	};
};
true