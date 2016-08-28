params ["_newUnit", "_oldUnit","_respawn","_respawnDelay"]

0 = [_newUnit] execVM "loadouts\basic_rifleman.sqf";
player moveincargo respawn_vehicle;
