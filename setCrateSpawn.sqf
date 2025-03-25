if (!isServer) exitWith {};

_boxPosition = getPos _this;
_this setPos (_boxPosition vectorAdd[0,0,random[700,800,900]]);
parachute_1 = "LIB_NonSteerable_Parachute" createVehicle [0,0,0]; 
parachute_1 setPosASL (getPosASL _this); 
_this attachTo [parachute_1, [0, 0, 0]];
