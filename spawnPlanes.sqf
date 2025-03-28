private _maxTime = 3600; // Maximum time to spawn planes in seconds

while { time < _maxTime } do {
	while { planeCount < maxPlanes && time < _maxTime } do {
		planes execVM "spawnPlane.sqf";
		sleep 5;
	};
};
