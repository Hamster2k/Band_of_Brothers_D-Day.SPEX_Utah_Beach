if (side player != resistance) exitWith {};

_spawnPosition = getPos player;

[player, _spawnPosition] execVM "parachuteInsert.sqf";
