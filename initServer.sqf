["someId", "onPlayerConnected", {
	if (({isPlayer _x} count playableUnits) > 0 || OPCOM_TOGGLE) then {
		["ALIVE_SYS_PROFILE","ALIVE_MIL_OPCOM","ALIVE_AMB_CIV_POPULATION","ALIVE_MIL_LOGISTICS","ALIVE_SYS_AISKILL"] call ALiVE_fnc_unPauseModule;
		OPCOM_TOGGLE = false;
	};
}] call BIS_fnc_addStackedEventHandler;

["someId", "onPlayerDisconnected", {
	if ( ({isPlayer _x} count playableUnits) == 0 ) then {
		["ALIVE_SYS_PROFILE","ALIVE_MIL_OPCOM","ALIVE_AMB_CIV_POPULATION","ALIVE_MIL_LOGISTICS","ALIVE_SYS_AISKILL"] call ALiVE_fnc_pauseModule;
		OPCOM_TOGGLE = true;
	};
}] call BIS_fnc_addStackedEventHandler;
