_heli = vehicle player; 
_Offset = [10,10,0]; 
_worldPos = _heli modelToWorld _Offset;

_heli setVelocity [0,2,0]; 

unassignvehicle vehicle player; 
player action ["eject",vehicle player];  

sleep 0.5; 

_para = "nonSteerable_Parachute_F" createVehicle _worldPos; // "nonSteerable_Parachute_F" or "Steerable_Parachute_F" 
_para setPos _worldPos; 

player moveIndriver _para; 
waitUntil {((visiblePositionASL player select 2) < 5)}; 

sleep 1; 

MoveOut player; 
deleteVehicle _para;