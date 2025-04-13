if (side player != resistance) exitWith {};

player setUnitLoadout (player getVariable ["savedLoadout", []]);

_spawnPosition = getPos player;

if (getPos dropzone distance player < 500) then {
	[player, _spawnPosition] execVM "parachuteInsert.sqf";
};
