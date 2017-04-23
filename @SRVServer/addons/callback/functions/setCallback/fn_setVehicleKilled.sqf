if(SRVCall_DebugLevel > 0) then { diag_log format["[SRVS-Callback -> Set => VehicleKilled] %1", _this]; };
SRVCall_VehicleKilled pushBack _this;