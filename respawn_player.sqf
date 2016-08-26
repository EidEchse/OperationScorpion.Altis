waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = _this select 0;
player moveincargo respawn_vehicle;
_data = profileNamespace getVariable "bis_fnc_loadInventory_data";
systemChat format["%1", _data];
