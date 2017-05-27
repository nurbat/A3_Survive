/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * isLoading <BOOL>
 *
 */
if (_player getVariable ["SESSION", ""] == "") exitWith { false; } ;//Игрок загружен, но не соответсвует индификатор
if (_player getVariable ["UID", ""] != getPlayerUID _player) exitWith { false; } ;//Игрок загружен, но не соответсвует индификатор
true