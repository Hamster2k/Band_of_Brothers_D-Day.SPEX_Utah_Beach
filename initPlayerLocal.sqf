enableEngineArtillery false;
disableRemoteSensors true;

if (side player != resistance) exitWith {};

player setVariable ["savedLoadout", getUnitLoadout loadout];

if (serverCommandAvailable "#kick") then {
	player addAction ["Start Mission", {
		missionNamespace setVariable ["missionLive", true, true];
	}, [], 0, true, true, "", "!(missionNamespace getVariable ['missionLive', false]) && serverCommandAvailable '#kick'"];
};

if (missionNamespace getVariable ["missionLive", false]) then {
	_spawnPosition = getPos dropzone;

	[player, _spawnPosition] execVM "parachuteInsert.sqf";
};

waitUntil {
	missionNamespace getVariable ["missionLive", false];
};

diwako_dui_main_toggled_off = true;
[0, "BLACK", 5, 0, "SPE_HoW_Ingame_Music_Alex_Under_The_Sky_The_War", "", 1] call BIS_fnc_fadeEffect;
["<t size=2>June 6, 1944<br/>D-Day</t>", -1, -1, 4, 2, 0] spawn BIS_fnc_dynamicText;
sleep 10;
["Due to bad weather and heavy AA fire, <br/>many paratroopers miss their assigned dropzone.", -1, -1, 5, 3, 0] spawn BIS_fnc_dynamicText;
sleep 10;
["Many paratroopers from 2nd Batallion, 101st Airborne, <br/> land way further West than anticipated.", -1, -1, 5, 3, 0] spawn BIS_fnc_dynamicText;
sleep 10;
["Most men of Easy company land around Sainte-Mere-Eglise, <br/> originally an objective for the 82nd.", -1, -1, 5, 3, 0] spawn BIS_fnc_dynamicText;
sleep 10;
["<t size=2>You are among them...</t>", -1, -1, 10, 5, 0] spawn BIS_fnc_dynamicText;
[1, "BLACK", 5] call BIS_fnc_fadeEffect;
diwako_dui_main_toggled_off = false;
