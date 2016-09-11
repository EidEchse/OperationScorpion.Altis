0 = [] execVM "OS_Scripts\init.sqf";

_start = time;
waituntil {(player getvariable ["alive_sys_player_playerloaded",false]) || ((time - _start) > 60)};

if (isServer) then {
    [] spawn {
        while {true} do {
            sleep 60;
            [] call ALiVE_fnc_createProfilesFromUnitsRuntime;
        };
    };
};
