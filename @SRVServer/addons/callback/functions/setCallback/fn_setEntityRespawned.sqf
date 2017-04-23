if(SRVCall_DebugLevel > 0) then { diag_log format["[SRVS-Callback -> Set => EntityRespawned] %1", _this]; };
SRVCall_EntityRespawned pushBack _this;