/*
 * Arguments:
 * 0: Object_Key <STRING/OBJECT>
 *
 * Return Value:
 * None
 *
*/

params["_objKey"];

//SETUP
private _key = "";
if(typeName _objKey == "STRING") then { _key = _objKey; };
if(typeName _objKey == "OBJECT") then { _key = _objKey getVariable["Session", ""]; };
if(_key == "") exitWith { };

missionNamespace setVariable [_key + "_key", [], true];
missionNamespace setVariable [_key + "_val", [], true];