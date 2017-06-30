params["_jobKey"];

//=========
//JOBCreate
//=========
if(isNil "_jobKey") then 
{
    //Запущен, и меньшее время не найдено, ВЫХОД
    if (SRVCore_CronIsRun and !(SRVCore_CronRunTime > selectMin SRVCore_CronTimes)) exitWith { };
    if (count SRVCore_CronTimes == 0) exitWith { }; //EMPTY JOBS

    SRVCore_CronIsKey = Call SRVTools_fnc_UID;
    SRVCore_CronIsRun = false;
    SRVCore_CronIsKey execVM "server_core\cron\fn_runJob.sqf"; //Запускаем новый экземпляр
    if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-JOB: NEW"]; };
};

//=========
//JOBRepeat
//=========
if(isNil "_jobKey") exitWith {  }; //Key Job NULL //EXIT
if(SRVCore_CronIsRun) exitWith { if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-JOB: EXIT IS RUN"]; }; }; //JOB => OFFLINE
if(count SRVCore_CronTimes == 0) exitWith { if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-JOB: EXIT EMPTY"]; }; }; //List jobs => empty // EXIT JOB
//SETUP JOB
SRVCore_CronRunTime = (selectMin SRVCore_CronTimes); //Setup Time
SRVCore_CronIsKey = _jobKey; //Setup Key
SRVCore_CronIsRun = true; //Setup => TO ONline
if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-JOB: WAIT %1", SRVCore_CronRunTime]; };
sleep (SRVCore_CronRunTime - time); //Время запуска задачи
//CHECK JOB
if(_jobKey != SRVCore_CronIsKey or isNil "_jobKey") exitWith { if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-JOB: EXIT WRONG KEY"]; }; }; //Ключ не совпадает
if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-JOB: START"]; };
{
    if(time > _x) then 
    { 
        if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-JOB: EXEC COMMAND"]; };
        (SRVCore_CronJobs select _forEachIndex) Call BIS_fnc_call;
    };
    (SRVCore_CronKeys select _forEachIndex) Call SRVCore_fnc_deleteJob;//Удаляем выполненную задачу
} forEach SRVCore_CronTimes;

if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-JOB: END"]; };
SRVCore_CronRunTime = 0; //Сбрасываем время
SRVCore_CronIsRun = false; //Задача завершила работу
_jobKey execVM "server_core\cron\fn_runJob.sqf"; //Запускаем задачу