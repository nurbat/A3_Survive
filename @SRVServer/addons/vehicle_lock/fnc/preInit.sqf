execVM format["vehicle_lock\%1.SRVConfig.sqf", worldName];
["SRVVehicleLock", false] Call SRVCore_fnc_loadModule;

//[ID, KeyName, KeyClass, KeyVehicle]
SRVVehicleLock_Keys = [];
["ContainerClosed", { _this Call SRVVehicleLock_fnc_updateKeys; }] Call SRVCore_fnc_createEvent;

//Init Load Keys
Call SRVVehicleLock_fnc_loadKeysVehicles;