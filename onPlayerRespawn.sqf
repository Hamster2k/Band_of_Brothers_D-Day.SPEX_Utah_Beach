if (side player != resistance) exitWith {};

player setUnitLoadout (player getVariable ["savedLoadout", []]);

sleep 0.1;

_spawnPosition = getPos player;

if (getPos dropzone distance player < 500) then {
	[player, _spawnPosition] execVM "parachuteInsert.sqf";
};
