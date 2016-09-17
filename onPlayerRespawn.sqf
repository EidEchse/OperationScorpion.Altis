params ["_newUnit", "_oldUnit","_respawn","_respawnDelay"];

sleep 1;
0 = [_newUnit] execVM "OS_Scripts\loadouts\basic_rifleman.sqf";
sleep 5;
player moveincargo RESPAWNVEHICLE_rhs_faction_usm;
