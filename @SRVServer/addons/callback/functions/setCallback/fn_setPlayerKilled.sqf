if(SRVCall_DebugLevel > 0) then { diag_log format["[SRVS-Callback -> Set => PlayerKilled] %1", _this]; };
SRVCall_PlayerKilled pushBack _this;