waitUntil { !(isNil { Call SRVDB_fnc_loaded }) };

_vehicleLoaded = Call SRVVehicle_fnc_load;
if !(isNil "_vehicleLoaded") then 
{
    {
        _data = _x;
        _vehicleId =        call compile "_data select 0";
        _vehicleName =      _data select 1;
        _vehicleClass =     _data select 2;
        _vehicleLocked =    call compile "_data select 4";
        _vehicleFuel =      call compile "_data select 5";
        _vehicleDamage =    call compile "_data select 6";
        _vehicleHitpoints = call compile "_data select 7";
        _vehiclePosition =  call compile "_data select 8";
        _vehicleDirection = call compile "_data select 9";
        _vehicleUp =        call compile "_data select 10";
        _vehicleItems =     call compile "_data select 11";
        _vehicleMagazine =  call compile "_data select 12";
        _vehicleWeapon =    call compile "_data select 13";
        _vehicleCargo =     call compile "_data select 14";
        _vehicleAmmo =      call compile "_data select 18";
        
        _vehicleObject = ([_vehicleClass, _vehiclePosition, _vehicleDirection, true] Call SRVVehicle_fnc_objectCreate);

        _vehicleObject setVariable ["DatabaseID", _vehicleId];
        _vehicleObject setVariable ["OwnerName", _vehicleName];
        _vehicleObject lock _vehicleLocked;
        _vehicleObject setFuel _vehicleFuel;
        _vehicleObject setDamage _vehicleDamage;
        if ((typeName _vehicleHitpoints) isEqualTo "ARRAY") then 
        {
            {
                _vehicleObject setHitPointDamage [_x select 0, _x select 1];
            } forEach _vehicleHitpoints;
        };

        [_vehicleObject, _vehicleItems]     Call SRV_Core_setItemCargo;
        [_vehicleObject, _vehicleWeapon]    Call SRV_Core_setWeaponsItemsCargo;
        [_vehicleObject, _vehicleMagazine]  Call SRV_Core_setMagazinesAmmoCargo;
        [_vehicleObject, _vehicleCargo]     Call SRV_Core_setEveryContainer;
        [_vehicleObject, _vehicleAmmo]      Call SRV_Core_setVehicleAmmo;

    } forEach _vehicleLoaded;
};

Call SRVVehicle_fnc_spawnVehiclesLocation;
Call SRVVehicle_fnc_spawnVehiclesRoad;
Call SRVVehicle_fnc_spawnVehiclesRandom;