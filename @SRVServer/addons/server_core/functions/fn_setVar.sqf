/*
 * Arguments:
 * 0: Object_Key <STRING>
 * 1: Key <String>
 * 2: Value <TypeOf>
 *
 * Return Value:
 * IdKey
 *
*/
params["_objKey", "_varKey", "_varValue"];
private _getValues = missionNamespace getVariable [_objKey + "_key", []];
private _setValues = missionNamespace getVariable [_objKey + "_val", []];
private _idValue = _getValues find _varKey;
if(_idValue >= 0) then { _setValues set [_idValue, _varValue]; }
else 
{ 
    _getValues pushBackUnique _varKey;
    _setValues pushBackUnique _varValue;
};
missionNamespace setVariable [_objKey + "_key", _getValues, true];
missionNamespace setVariable [_objKey + "_val", _setValues, true];
count _getValues;