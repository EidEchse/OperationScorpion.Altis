0 = [] execVM "cfgVehicleSpawner.sqf";
0 = [] execVM "cfgSelectiveArsenal.sqf";
0 = [] execVM "cfgEquipmentSpawner.sqf";
0 = [] execVM "cfgReloadingAmmobox.sqf";

if (isServer) then {
    [] spawn {
        while {true} do {
            sleep 60;
            [] call ALiVE_fnc_createProfilesFromUnitsRuntime;
        };
    };
};
