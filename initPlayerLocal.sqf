player setVariable ["savedLoadout", getUnitLoadout loadout];
missionLive = false;

waitUntil {
	missionLive
};

[0, "BLACK", 5, 0, "SPE_HoW_Ingame_Music_Alex_Under_The_Sky_The_War", "", 1] call BIS_fnc_fadeEffect;
["<t size=2>D-Day</t><br/><br/>Dropping somewhere West of where you should...", -1, -1, 10, 10, 0] spawn BIS_fnc_dynamicText;
sleep 30;
// execVM "onPlayerRespawn.sqf";
[1, "BLACK", 5] call BIS_fnc_fadeEffect;
