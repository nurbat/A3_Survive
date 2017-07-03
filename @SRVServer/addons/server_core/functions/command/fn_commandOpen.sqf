if(_this getVariable["chatCommandInit", false]) exitWith { };
[[], 
{
    SRVCore_client_commandOpen = 
    {
        if (inputAction "Chat" > 0) then
        {
            [] spawn
            {
                waitUntil {shownChat};
                waitUntil {!isNull (finddisplay 24 displayctrl 101)};
                SRVCommand_var_withChat = (findDisplay 24) displayAddEventHandler["KeyDown","_this call SRVCore_client_commandCheck"]; 
            };
        };
    };
}, _this] Call SRVCore_fnc_execCommand;