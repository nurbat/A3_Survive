/*
 * Arguments:
 * 0: Object_Key <STRING/OBJECT>
 * 1: Key <String>
 * 2: Value <TypeOf>
 *
 * Return Value:
 * IdKey
 *
*/
params["_objKey", "_varKey", "_varValue"];

//SETUP
private _key = "";
if(typeName _objKey == "STRING") then { _key = _objKey; };
if(typeName _objKey == "OBJECT") then { _key = _objKey getVariable["Session", ""]; };
if(_key == "") then 
{ 
    _key =  Call SRVTools_fnc_UID; 
    _objKey setVariable["Session", _key, true];
};

private _getValues = missionNamespace getVariable [_key + "_key", []];
private _setValues = missionNamespace getVariable [_key + "_val", []];
private _idValue = _getValues find _varKey;
if(_idValue >= 0) then { _setValues set [_idValue, _varValue]; }
else 
{ 
    _getValues pushBackUnique _varKey;
    _setValues pushBackUnique _varValue;
};
missionNamespace setVariable [_key + "_key", _getValues, true];
missionNamespace setVariable [_key + "_val", _setValues, true];
count _getValues;