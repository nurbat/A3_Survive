params ["_posX", "_posY", "_posRadius"];

_centerX = _posX;
_centerY = _posY;
_radius = _posRadius;
_randomDirection = random 360;
_randomRadius = random _radius;
_offsetX = _randomRadius * (cos _randomDirection);
_offsetY = _randomRadius * (sin _randomDirection);
[_centerX + _offsetX, _centerY + _offsetY]