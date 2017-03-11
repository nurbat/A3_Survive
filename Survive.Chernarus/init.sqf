sleep 1;

if (isServer) then {

}else
{
	ExecVM "Survarium_Client\survarium_client_dead.sqf";
	ExecVM "Survarium_Client\survarium_client_load.sqf";
	ExecVM "Survarium_Client\survarium_client_respawn.sqf";
};