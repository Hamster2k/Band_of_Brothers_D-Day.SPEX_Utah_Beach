sleep 50;

_dropzone = getPos dropzone;

{
	[_x, _dropzone] execVM "parachuteInsert.sqf";
} forEach playableUnits;
