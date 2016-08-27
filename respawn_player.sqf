waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = _this select 0;
player moveincargo respawn_vehicle;
