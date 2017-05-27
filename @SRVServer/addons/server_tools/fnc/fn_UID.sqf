/*
 * Arguments:
 * None
 *
 * Return Value:
 * UID <STRING>
 *
 * Example:
 * call SRVCore_fnc_UID;
 *
 */
private["_lang", "_uid"];
_lang = "0123456789abcdef" splitString "";
_uid = "";
for "_i" from 0 to 36 do 
{
    if(_i == 8 or _i== 13 or _i == 18 or _i == 23) then { _uid = _uid + "-"; };
    _uid = _uid + selectRandom _lang;
};
_uid