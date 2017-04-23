if(SRVCall_DebugLevel > 0) then { diag_log format["[SRVS-Callback -> Set => EntityKilled] %1", _this]; };
SRVCall_EntityKilled pushBack _this;