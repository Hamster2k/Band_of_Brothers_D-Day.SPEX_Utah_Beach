params ["_unit", "_spawnPosition"];

_newSpawn = [_spawnPosition, 0, 1000] call BIS_fnc_findSafePos;

_unit setPos (_newSpawn vectorAdd[0, 0, 200]);
_unit setDir 0;

_parachute = "LIB_NonSteerable_Parachute" createVehicle [0, 0, 0];
_parachute setPosASL getPosASL _unit;
_unit moveInDriver _parachute;

waitUntil {
	sleep 0.1;
	getPosATL _unit select 2 < 2;
};

sleep 2;

_chute = "LIB_GER_ParachuteLanded" createVehicle (position _unit vectorAdd [0, -5, 0]);
_chute setDir 0;
