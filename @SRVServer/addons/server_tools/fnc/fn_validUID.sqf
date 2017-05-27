/*
 * Arguments:
 * 0: UID  <STRING>
 *
 * Return Value:
 * UID <STRING>
 *
 * Example:
 * call SRVCore_fnc_UID;
 *
 */
private["_valid"];
_valid = _this splitString "-";

if !(count _valid == 5) exitWith { false; };
if !(count (_valid select 0) == 9) exitWith { false; };
if !(count (_valid select 1) == 5) exitWith { false; };
if !(count (_valid select 2) == 5) exitWith { false; };
if !(count (_valid select 3) == 5) exitWith { false; };
if !(count (_valid select 4) == 14) exitWith { false; };
true;
