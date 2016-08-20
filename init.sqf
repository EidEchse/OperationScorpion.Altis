0 = [] execVM "config\cfgVehicleSpawner.sqf";
0 = [] execVM "config\cfgSelectiveArsenal.sqf";
0 = [] execVM "config\cfgEquipmentSpawner.sqf";
0 = [] execVM "config\cfgReloadingAmmobox.sqf";

if (isServer) then {
    [] spawn {
        while {true} do {
            sleep 60;
            [] call ALiVE_fnc_createProfilesFromUnitsRuntime;
        };
    };
};
