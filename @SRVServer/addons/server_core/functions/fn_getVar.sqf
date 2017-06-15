/*
 * Arguments:
 * 0: Object_Key <STRING>
 * 1: Key <String>
 * 2: ValueDefault <TypeOf>
 *
 * Return Value:
 * Value
 *
*/
params["_objKey", "_varKey", "_varDefault"];
private _getValues = missionNamespace getVariable [_objKey + "_key", []];
private _setValues = missionNamespace getVariable [_objKey + "_val", []];
private _idValue = _getValues find _varKey;

if(_idValue == -1) exitWith { _varDefault; };
_setValues select _idValue;