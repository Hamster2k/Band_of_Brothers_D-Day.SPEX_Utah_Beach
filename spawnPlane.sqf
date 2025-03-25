if (!isServer) exitWith {};

planeCount = planeCount + 1;

_xCoord = random[-1000, 2500, 5000];

_pilotGroup = [[0, 0, 0], independent, ["LIB_US_Pilot", "LIB_US_Pilot"]] call BIS_fnc_spawnGroup;

_plane = createVehicle ["LIB_C47_RAF_bob", [_xCoord, 5120, 1500], [], 0, "FLY"];
_plane setDir 180;
_plane setVelocity [0, -100, 0];

_plane flyInHeight 250;

_this pushBack _plane;

{
	_x moveInAny _plane;
} forEach units _pilotGroup;

_pilotGroup setBehaviour "CARELESS";

_pilotGroup addWaypoint [[_xCoord, -1000, 1500], 0];

while { getPos _plane select 1 > -1000 and damage _plane < 1 } do {
	sleep 1;
};

_i = _this find _plane;
_this deleteAt _i;

if (damage _plane >= 1) then {
	sleep 30;
};

deleteVehicle _plane;

{
	deleteVehicle _x;
} forEach units _pilotGroup;

deleteGroup _pilotGroup;

planeCount = planeCount - 1;
