if(SRVCall_DebugLevel > 0) then { diag_log format["[SRVS-Callback -> Set => HandleDisconnect] %1", _this]; };
SRVCall_HandleDisconnect pushBack _this;