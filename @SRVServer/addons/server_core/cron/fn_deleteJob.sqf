/*
 * Arguments:
 * Key JOB <STRING>
 *
 * Return Value:
 * Result <BOOL>
 *
 */

private["_index"];
_index = SRVCore_CronKeys find _this;

if(_index > -1) exitWith 
{
    if(SRVCore_DebugLevel > 1) then { diag_log format["SRV-JOB: DELETE %1", _this]; };
    SRVCore_CronKeys deleteAt _index;
    SRVCore_CronTimes deleteAt _index;
    SRVCore_CronJobs deleteAt _index;
    execVM "server_core\cron\fn_runJob.sqf";
    true;
};
false;