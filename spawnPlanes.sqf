while { time < 3600 } do {
	while { planeCount < maxPlanes } do {
		planes execVM "spawnPlane.sqf";
		sleep 1;
	};
};
