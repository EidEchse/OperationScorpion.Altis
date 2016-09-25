params ["_newUnit", "_oldUnit","_respawn","_respawnDelay"];
_newUnit allowDamage false;
_newUnit enableSimulation false;
_newUnit moveincargo [respawn_vehicle, 4];

sleep 1;
0 = [_newUnit] execVM "OS_Scripts\loadouts\basic_rifleman.sqf";
sleep 5;
_newUnit moveincargo [respawn_vehicle, 4];
_newUnit allowDamage true;
_newUnit enableSimulation true;