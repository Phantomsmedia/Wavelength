_heli = vehicle player; 
_Offset = [[-10,-10,-5],[-9,-12,-7],[8,-8,-3],[15,-9,-6],[5,-5,-3],[0,-15,-4],[-2,-8,-5],[3,-9,-2],[0,-8,-6]] call BIS_fnc_selectRandom; 
_worldPos = _heli modelToWorld _Offset;

_heli setVelocity [0,2,0]; 

unassignvehicle vehicle player; 
player action ["eject",vehicle player];  

sleep 0.1; 

_para = "nonSteerable_Parachute_F" createVehicle _worldPos; // "nonSteerable_Parachute_F" or "Steerable_Parachute_F" 
_para setPos _worldPos; 

player moveIndriver _para; 
waitUntil {((visiblePositionASL player select 2) < 5)}; 

sleep 1; 

MoveOut player; 
deleteVehicle _para;