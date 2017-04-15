private["_class","_hitPointNames"];
_class = _this;
_hitPointNames = [];
if (typeName _class == "OBJECT") then
{
	_class = typeOf _class;
};
0 = configProperties [ configFile >> "CfgVehicles" >> _class >> "HitPoints", "_hitPointNames pushBack configName _x; true", true];
_hitPointNames