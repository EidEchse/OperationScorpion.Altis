0 = [] execVM "config\cfgVehicleSpawner.sqf";
0 = [] execVM "config\cfgSelectiveArsenal.sqf";
0 = [] execVM "config\cfgEquipmentSpawner.sqf";

/*EE_Scripts_us_debug = "DEBUG";*/
/*EE_Scripts_vr_debug = "DEBUG";*/
/*EE_Scripts_es_debug = "DEBUG";*/
/*EE_Scripts_ra_debug = "DEBUG";*/
/*EE_Scripts_sa_debug = "DEBUG";*/
/*EE_Scripts_vs_debug = "DEBUG";*/

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
