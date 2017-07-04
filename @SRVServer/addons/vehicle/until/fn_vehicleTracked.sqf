/*
 * Arguments:
 * 0: Type/Vehicle <STRING/OBJECT>
 *
 * Return Value:
 * CountCreated <INT>
 *
*/
params["_raw"];

if(typeName _raw == "OBJECT") exitWith
{   
    private _owner = _raw getVariable["owner", ""];
    private _index = SRVVehicle_var_trackedType find _owner;
    if(_index == -1) exitWith 
    {
        SRVVehicle_var_trackedType append [_owner];
        SRVVehicle_var_trackedValue append [1];
        1;
    };
    private _maxValue = SRVVehicle_var_trackedValue select _index;
    SRVVehicle_var_trackedValue set[_index, (_maxValue + 1)];
    (_maxValue + 1);
};

if(typeName _raw == "STRING") exitWith
{
    private _index = SRVVehicle_var_trackedType find _raw;
    if(_index == -1) exitWith { 0 };
    SRVVehicle_var_trackedValue select _index;
};