/*
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Owner <STRING>
 * 2: UID <STRING> [OPTIONAL]
 *
 * Return Value:
 * UID <STRING>
 *
*/

params["_vehicle", "_owner", "_uid"];

_vehicle setVariable["owner", _owner, true];
_vehicle addEventHandler ["GetOut", { (_this select 0) call SRVVehicle_fnc_update }];
if(isNil "_uid") then
{
    private _var_uid = Call SRVTools_fnc_UID; 
    _vehicle setVariable["uid", _var_uid, true];
    _vehicle Call SRVVehicle_fnc_insert;
}
else { _vehicle setVariable["uid", _uid, true]; };
