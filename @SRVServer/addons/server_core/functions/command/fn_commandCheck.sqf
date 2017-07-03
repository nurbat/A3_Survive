if(_this getVariable["chatCommandInit", false]) exitWith { };
[[], 
{
    SRVCore_client_commandCheck = 
    {
        if !((_this select 1) isEqualTo 28) exitWith { };
        private _message = ctrlText (finddisplay 24 displayctrl 101);
        if !((_message select [0,1]) isEqualTo SRVCore_client_SpecialChar) exitWith { };
        (finddisplay 24 displayctrl 101) ctrlSetText "";
        closeDialog 0;
        (findDisplay 24) displayRemoveEventHandler ["KeyDown", SRVCommand_var_withChat];
        (findDisplay 24) closeDisplay 1;
        [[(_message splitString (SRVCore_client_SpecialChar + " ")), player], { _this call SRVCore_fnc_serverCommand; }] remoteExec ["SRVCore_fnc_execCommand", 2];
    };
}, _this] Call SRVCore_fnc_execCommand;