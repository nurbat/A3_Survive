/*
 * Arguments:
 * 0: X     <FLOAT>
 * 1: Y     <FLOAT>
 * 2: RADIUS <INT>
 *
 * Return Value:
 * 0: X <FLOAT>
 * 1: Y <FLOAT>
 * 2: 0
 *
 */
 params ["_posX", "_posY", "_posRadius"];
 private["_randomRadius", "_offsetX", "_offsetY"];
_randomDirection = random 360;
_randomRadius = random _posRadius;
_offsetX = _randomRadius * (cos _randomDirection);
_offsetY = _randomRadius * (sin _randomDirection);
[_posX + _offsetX, _posY + _offsetY, 0]