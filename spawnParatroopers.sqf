sleep 30;

{
	_dropzone = getPos dropzone;
	_dropPosition = [_dropzone, 0, 1250] call BIS_fnc_findSafePos;
	[_x, _dropPosition] execVM "parachuteInsert.sqf";
} forEach playableUnits;
