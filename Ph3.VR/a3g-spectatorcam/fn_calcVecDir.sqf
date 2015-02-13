private["_dir","_angle","_vecdx","_vecdy","_vecdz","_vecuz"];

_dir = _this select 0;
_angle = _this select 1;

_vecdx = sin(_dir) * cos(_angle);
_vecdy = cos(_dir) * cos(_angle);
_vecdz = sin(_angle);

_vecuz = cos(_angle);

[ [_vecdx,_vecdy,_vecdz], [0,0,_vecuz] ]