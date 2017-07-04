/*
 * Arguments:
 * 0: ClassName <STRING>
 * 1: Position <ARRAY>
 * 2: Direction <ARRAY> [OPTIONAL]
 *
 * Return Value:
 * 0: vehicleObject <OBJECT>
 *
*/
params["_className", "_position", "_direction"];

private _objectVehicle = createVehicle [_className, _position, [], 0, "CAN_COLLIDE"];
_objectVehicle allowDamage false;

//CLEAR
clearBackpackCargoGlobal    _objectVehicle;
clearItemCargoGlobal        _objectVehicle;
clearMagazineCargoGlobal    _objectVehicle;
clearWeaponCargoGlobal      _objectVehicle;

//POSITION
if(isNil "_direction") then 
{
    _objectVehicle setDir (random 360);
}
else 
{
    if ((typeName _direction) isEqualTo "ARRAY") then { _objectVehicle setVectorDirAndUp _direction; }
    else { _objectVehicle setDir _direction; };
};
_objectVehicle setPosATL _position;

//CONFIG
if (_className in SRVVehicle_cfg_NVG or SRVVehicle_cfg_NVGGlobal) then { _objectVehicle disableNVGEquipment true; };
if (_className in SRVVehicle_cfg_Thermal or SRVVehicle_cfg_ThermalGlobal) then { _objectVehicle disableTIEquipment true; };
SRVVehicle_var_vehicleLoaded append [_objectVehicle];
_objectVehicle allowDamage true;

//RETURN
_objectVehicle

