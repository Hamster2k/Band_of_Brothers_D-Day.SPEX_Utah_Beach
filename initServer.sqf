missionLive = false;
publicVariable "missionLive";

planeCount = 0;
maxPlanes = 25;
planes = [];
aaGuns = [aa_1, aa_2, aa_3, aa_4, aa_5, aa_6, aa_7];

waitUntil {
	missionLive
};

execVM "spawnPlanes.sqf";
execVM "spawnParatroopers.sqf";

sleep 25;

while { planeCount > 0 } do {
	{
		_gun = _x;
		_gunner = gunner _x;

		if (isNull assignedTarget _gunner) then {
			// find the closest plane to the AA gun
			_closestPlane = objNull;
			_closestDistance = 10000; // Arbitrary large number
			{
				_distance = _x distance _gun; // distance between AA gun and plane
				if (_distance < _closestDistance) then {
					_closestDistance = _distance;
					_closestPlane = _x;
				};
			} forEach planes;
			[_closestPlane, _gunner] execVM "target.sqf";
			sleep 1;
		};
	} forEach aaGuns;
};

/* {
		while { isNull assignedTarget _x && damage _x < 1 && planeCount == maxPlanes && count crew _x > 0 } do {
			_target = selectRandom planes;
			
			_aaCrew = crew _x select 0;
			_aaCrew reveal _target;
			_aaCrew doTarget _target;
			_aaCrew commandFire _target;
			
			sleep 1;
		};
	} forEach aaGuns;
	
sleep 0.1; */
