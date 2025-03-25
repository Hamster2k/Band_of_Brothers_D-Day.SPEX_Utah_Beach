params ["_target", "_aaCrew"];
// hint str [_target, _aaCrew];

// Rearm the vehicle the AA crew is in
_vehicle = vehicle _aaCrew;
if (!isNull _vehicle) then {
	_vehicle setVehicleAmmo 1; // Fully rearm the vehicle
};

_aaCrew doTarget _target;
_aaCrew commandFire _target;

while { alive _target && alive _aaCrew && (_aaCrew distance _target) < 1000 } do {
	group _aaCrew forgetTarget _target;
	_aaCrew reveal [_target, 4];
	sleep 1;
};

_aaCrew doWatch objNull;
