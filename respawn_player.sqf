waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = _this select 0;
0 = [_unit] execVM "loadouts\basic_rifleman.sqf
player moveincargo respawn_vehicle;
