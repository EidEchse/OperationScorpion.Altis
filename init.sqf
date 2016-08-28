0 = [] execVM "config\cfgVehicleSpawner.sqf";
0 = [] execVM "config\cfgSelectiveArsenal.sqf";
0 = [] execVM "config\cfgEquipmentSpawner.sqf";
0 = [] execVM "config\cfgReloadingAmmobox.sqf";

EE_Scripts_us_debug = 2;
EE_Scripts_vr_debug = 2;
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
