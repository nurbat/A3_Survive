/*
 * Arguments:
 * 0: Object_Key <STRING/OBJECT>
 * 1: Key <String>
 * 2: ValueDefault <TypeOf>
 *
 * Return Value:
 * Value
 *
*/
params["_objKey", "_varKey", "_varDefault"];

//SETUP
private _key = "";
if(typeName _objKey == "STRING") then { _key = _objKey; };
if(typeName _objKey == "OBJECT") then { _key = _objKey getVariable["Session", ""]; };
if(_key == "") exitWith { "" };

private _getValues = missionNamespace getVariable [_key + "_key", []];
private _setValues = missionNamespace getVariable [_key + "_val", []];
private _idValue = _getValues find _varKey;

if(_idValue == -1) exitWith { _varDefault; };
_setValues select _idValue;