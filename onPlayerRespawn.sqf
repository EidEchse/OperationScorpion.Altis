params ["_newUnit", "_oldUnit","_respawn","_respawnDelay"];

0 = [_newUnit] execVM "OS_Scripts\loadouts\basic_rifleman.sqf";
player moveincargo RESPAWNVEHICLE_rhs_faction_usm;
