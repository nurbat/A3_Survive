/*
 * Arguments:
 * 0: Time <INT>
 * 1: Code <CODE> [Param, {Code}]
 * 1: Global time <BOOL> (OPTIONAL)
 *
 * Return Value:
 * KEY <STRING>
 *
 */
params["_timeRun", "_job", "_global"];
private["_isGlobal"];

if(isNil "_global") then { _isGlobal = false; }
else { _isGlobal = _global; };

if (_isGlobal and (time > _timeRun)) exitWith { if(SRVCore_DebugLevel > 1) then { diag_log format["SRV-JOB: CREATE EXIT"]; }; };
_key = Call SRVTools_fnc_UID;//GENERATE KEY
if(SRVCore_DebugLevel > 1) then { diag_log format["SRV-JOB: CREATE %1", _key]; };
SRVCore_CronKeys pushBack _key;
if(_isGlobal) then { SRVCore_CronTimes pushBack _timeRun; }
else { SRVCore_CronTimes pushBack (_timeRun + time); };
SRVCore_CronJobs pushBack _job;
execVM "server_core\cron\fn_runJob.sqf";//RUN
_key