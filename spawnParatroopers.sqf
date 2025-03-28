sleep 40;

_dropzone = getPos dropzone;

{
	[[_x, _dropzone], "parachuteInsert.sqf"] remoteExec ["execVM", _x];
	sleep 0.1;
} forEach playableUnits;
