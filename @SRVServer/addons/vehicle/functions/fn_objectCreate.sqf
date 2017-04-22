//[ClassName, Position, Direction, UseATL]
_className = _this select 0;
_position = _this select 1;
_direction = _this select 2;
_usePositionATL = _this select 3;
 
_vehicleObject = createVehicle [_className, _position, [], 0, "CAN_COLLIDE"];


if ((typeName _direction) isEqualTo "ARRAY") then { _vehicleObject setVectorDirAndUp _direction; }
else { _vehicleObject setDir _direction; };

if (_usePositionATL) then { _vehicleObject setPosATL _position; }
else { _vehicleObject setPosASL _position; };

clearBackpackCargoGlobal _vehicleObject;
clearItemCargoGlobal _vehicleObject;
clearMagazineCargoGlobal _vehicleObject;
clearWeaponCargoGlobal _vehicleObject;

if (_className in disableVehicleNVG && !disableVehicleNVGGlobal) then { _vehicleObject disableNVGEquipment true; };
if (_className in disableVehicleThermal && !disableVehicleThermalGlobal) then { _vehicleObject disableTIEquipment true; };

_vehicleObject