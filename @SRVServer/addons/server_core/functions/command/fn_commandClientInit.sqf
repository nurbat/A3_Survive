if(_this getVariable["chatCommandInit", false]) exitWith { };
[SRVCore_cfg_SpecialChar, 
{
    SRVCore_client_SpecialChar = _this;
    [] spawn {
        (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call SRVCore_client_commandOpen"]; 
    };
}, _this] Call SRVCore_fnc_execCommand;
_this setVariable["chatCommandInit", true, true];