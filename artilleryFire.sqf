params ["_artillery"];

while {
	alive _artillery && {
		alive _x
	} count crew _artillery > 0
} do {
	_artillery setVehicleAmmo 1;
	waitUntil {
		sleep 1;
		unitReady _artillery;
	};
	sleep random 5;
	_artillery doArtilleryFire [getPos target, "LIB_20x_Shell_105L28_Gr39HlC_HE", 1];
};
