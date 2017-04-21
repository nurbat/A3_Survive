waitUntil { !(isNil { Call SRVDB_fnc_loaded }) };
if(DebugLevel > 0) then { diag_log format["====[VEHICLE LOADING]===="]; };
_vehicleLoaded = Call SRVVehicle_fnc_load;
if !(isNil "_vehicleLoaded") then 
{
    {
        _data = _x;
        _vehicleDatabase =  _data select 0;
        _vehicleName =      _data select 1;
        _vehicleClass =     _data select 2;
        _vehicleLocked =    _data select 4;
        _vehicleFuel =      _data select 5;
        _vehicleDamage =    _data select 6;
        _vehicleHitpoints = _data select 7;
        _vehiclePosition =  _data select 8;
        _vehicleDirection = _data select 9;
        _vehicleUp =        _data select 10;
        _vehicleItems =     _data select 11;
        _vehicleMagazine =  _data select 12;
        _vehicleWeapon =    _data select 13;
        _vehicleCargo =     _data select 14;
        _vehicleAmmo =      _data select 18;
        
        _vehicleObject = ([_vehicleClass, _vehiclePosition, [_vehicleDirection, _vehicleUp], true] Call SRVVehicle_fnc_objectCreate);

        if(DebugLevel > 2) then { diag_log format["[SRVS-VEHICLE] DETAIL %1", _vehicleHitpoints]; };
        _vehicleObject setVariable ["IsPersistent", true];
        _vehicleObject setVariable ["DatabaseID", _vehicleDatabase];
        _vehicleObject setVariable ["OwnerName", _vehicleName];
        _vehicleObject lock _vehicleLocked;
        _vehicleObject setFuel _vehicleFuel;
        _vehicleObject setDamage _vehicleDamage;
        _vehicleObject addEventHandler ["GetOut", { _this call SRVVehicle_fnc_update}];

        [_vehicleObject, _vehicleHitpoints] Call SRVCore_fnc_setAllHitPointsDamage;
        [_vehicleObject, _vehicleItems]     Call SRVCore_fnc_setItemCargo;
        [_vehicleObject, _vehicleWeapon]    Call SRVCore_fnc_setWeaponsItemsCargo;
        [_vehicleObject, _vehicleMagazine]  Call SRVCore_fnc_setMagazinesAmmoCargo;
        [_vehicleObject, _vehicleCargo]     Call SRVCore_fnc_setEveryContainer;
        [_vehicleObject, _vehicleAmmo]      Call SRVCore_fnc_setVehicleAmmo;

        _vehicleName Call SRVVehicle_fnc_setVehicleTracker;

    } forEach _vehicleLoaded;
};

Call SRVVehicle_fnc_spawnVehiclesLocation;
Call SRVVehicle_fnc_spawnVehiclesRoad;
Call SRVVehicle_fnc_spawnVehiclesRandom;