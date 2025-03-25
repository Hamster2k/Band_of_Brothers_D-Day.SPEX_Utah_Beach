[0, "BLACK", 5, 0, "SPE_HoW_Ingame_Music_Alex_Under_The_Sky_The_War", "", 1] call BIS_fnc_fadeEffect;
["<t size=2>Later, near Brecourt Manor...", -1, -1, 5, 1, 0] spawn BIS_fnc_dynamicText;
sleep 5;
if (isServer) then {
	skipTime 2;
};
[1, "BLACK", 5] call BIS_fnc_fadeEffect;
