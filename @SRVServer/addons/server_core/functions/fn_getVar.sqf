/*
 * Arguments:
 * 0: Object_Key <STRING>
 * 1: Key <String>
 *
 * Return Value:
 * Value
 *
*/
params["_objKey", "_varKey"];
private _getValues = missionNamespace getVariable [_objKey + "_key", []];
private _setValues = missionNamespace getVariable [_objKey + "_val", []];
private _idValue = _getValues find _varKey;
_setValues select _idValue;